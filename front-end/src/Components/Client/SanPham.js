import React, { useEffect, useState } from 'react';
import { GetSanPham_asc } from '../../services/sanphamService';
import { Container, Row, Col, Card, Button, Nav } from 'react-bootstrap';
import { Link } from 'react-router-dom';
const SanPham = () => {
    const [data, setData] = useState([]);

    useEffect(() => {
        getSanPham();
    }, []);

    const getSanPham = async () => {
        try {
            const res = await GetSanPham_asc();
            const data = res && res.data ? res.data : res
            console.log(data)
            setData(data);
        } catch (error) {
            console.error('Error fetching data:', error);
        }
    }

    return (
        <>
            <br />
            <div className="block block-products-carousel" data-layout="grid-4">
                <Container>
                    <div className="block-header">
                        <h3 className="block-header__title">Sản phẩm</h3>
                        <div className="block-header__divider"></div>
                    </div>
                    <Row className="block-products-carousel__slider">
                        {data.map((item, index) => (
                            <Col key={index} xs={12} sm={6} md={3}>
                                <Card className="product-card">
                                    <Card.Body>
                                        <div className="product-card__badges-list">
                                            <div className="product-card__badge product-card__badge--hot">Hot</div>
                                        </div>
                                        <div className="product-card__image">
                                            <a >
                                                <Card.Img variant="top" src={`data:image/jpg;base64,${item.Anh}`} alt="" />
                                            </a>
                                        </div>
                                        <div className="product-card__info">
                                            <div className="product-card__name">
                                                <Nav.Link as={Link} to={`/XemChiTiet/${item.ID}`}>
                                                    {item.Ten.length > 25 ? `${item.Ten.substring(0, 25)}...` : item.Ten}
                                                </Nav.Link>
                                            </div>
                                        </div>
                                        <div className="product-card__actions">
                                            <div className="product-card__prices">{item.Gia.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' })}</div>
                                            <div className="product-card__buttons">
                                                <Button variant="primary" className="product-card__addtocart" type="button">
                                                    Add To Cart
                                                </Button>
                                            </div>
                                        </div>
                                    </Card.Body>
                                </Card>
                            </Col>
                        ))}
                    </Row>
                </Container>
            </div>
        </>
    )
}

export default SanPham;