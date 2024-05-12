import React, { useEffect, useState } from 'react';
import { GetSanPham_asc } from '../../services/sanphamService';
import { GetSlide_Asc } from '../../services/slideService';
import { Container, Row, Col, Card, Button } from 'react-bootstrap';
const Home = () => {

    const [data, setData] = useState([]);
    useEffect(() => {
        //getSlide();
        getSanPham_asc();
        //getNgauNhien();
        //getLoaiSP();
    }, [])
    const getSanPham_asc = async () => {
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
            <div className="block-slideshow block-slideshow--layout--with-departments block">
                <div className="container">
                    <div className="row">
                        <div className="col-12 col-lg-9 offset-lg-3">
                            <div className="block-slideshow__body">
                                <div className="owl-carousel">
                                    <a className="block-slideshow__slide" href="#">
                                        <div className="block-slideshow__slide-image block-slideshow__slide-image--desktop"
                                            style={{ backgroundImage: "url('images/slides/slide-1.jpg')" }}></div>
                                        <div className="block-slideshow__slide-image block-slideshow__slide-image--mobile"
                                            style={{ backgroundImage: "url('images/slides/slide-1-mobile.jpg')" }}></div>
                                        <div className="block-slideshow__slide-content">
                                            <div className="block-slideshow__slide-title">Big choice of<br />Plumbing products</div>
                                            <div className="block-slideshow__slide-text">Lorem ipsum dolor sit amet,
                                                consectetur adipiscing elit.<br />Etiam pharetra laoreet dui quis molestie.</div>
                                            <div className="block-slideshow__slide-button">
                                                <span className="btn btn-primary btn-lg">Shop Now</span>
                                            </div>
                                        </div>
                                    </a>
                                    <a className="block-slideshow__slide" href="#">
                                        <div className="block-slideshow__slide-image block-slideshow__slide-image--desktop"
                                            style={{ backgroundImage: "url('images/slides/slide-2.jpg')" }}></div>
                                        <div className="block-slideshow__slide-image block-slideshow__slide-image--mobile"
                                            style={{ backgroundImage: "url('images/slides/slide-2-mobile.jpg')" }}></div>
                                        <div className="block-slideshow__slide-content">
                                            <div className="block-slideshow__slide-title">Screwdrivers<br />Professional Tools</div>
                                            <div className="block-slideshow__slide-text">Lorem ipsum dolor sit amet,
                                                consectetur adipiscing elit.<br />Etiam pharetra laoreet dui quis molestie.</div>
                                            <div className="block-slideshow__slide-button">
                                                <span className="btn btn-primary btn-lg">Shop Now</span>
                                            </div>
                                        </div>
                                    </a>
                                    <a className="block-slideshow__slide" href="#">
                                        <div className="block-slideshow__slide-image block-slideshow__slide-image--desktop"
                                            style={{ backgroundImage: "url('images/slides/slide-3.jpg')" }}></div>
                                        <div className="block-slideshow__slide-image block-slideshow__slide-image--mobile"
                                            style={{ backgroundImage: "url('images/slides/slide-3-mobile.jpg')" }}></div>
                                        <div className="block-slideshow__slide-content">
                                            <div className="block-slideshow__slide-title">One more<br />Unique header</div>
                                            <div className="block-slideshow__slide-text">Lorem ipsum dolor sit amet,
                                                consectetur adipiscing elit.<br />Etiam pharetra laoreet dui quis molestie.</div>
                                            <div className="block-slideshow__slide-button">
                                                <span className="btn btn-primary btn-lg">Shop Now</span>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div className="block block-features block-features--layout--classic">
                <div className="container">
                    <div className="block-features__list">
                        <div className="block-features__item">
                            <div className="block-features__icon">
                                <svg width="48px" height="48px">
                                    <use xlinkHref="images/sprite.svg#fi-free-delivery-48"></use>
                                </svg>
                            </div>
                            <div className="block-features__content">
                                <div className="block-features__title">Free Shipping</div>
                                <div className="block-features__subtitle">For orders from $50</div>
                            </div>
                        </div>
                        <div className="block-features__divider"></div>
                        <div className="block-features__item">
                            <div className="block-features__icon">
                                <svg width="48px" height="48px">
                                    <use xlinkHref="images/sprite.svg#fi-24-hours-48"></use>
                                </svg>
                            </div>
                            <div className="block-features__content">
                                <div className="block-features__title">Support 24/7</div>
                                <div className="block-features__subtitle">Call us anytime</div>
                            </div>
                        </div>
                        <div className="block-features__divider"></div>
                        <div className="block-features__item">
                            <div className="block-features__icon">
                                <svg width="48px" height="48px">
                                    <use xlinkHref="images/sprite.svg#fi-payment-security-48"></use>
                                </svg>
                            </div>
                            <div className="block-features__content">
                                <div className="block-features__title">100% Safety</div>
                                <div className="block-features__subtitle">Only secure payments</div>
                            </div>
                        </div>
                        <div className="block-features__divider"></div>
                        <div className="block-features__item">
                            <div className="block-features__icon">
                                <svg width="48px" height="48px">
                                    <use xlinkHref="images/sprite.svg#fi-tag-48"></use>
                                </svg>
                            </div>
                            <div className="block-features__content">
                                <div className="block-features__title">Hot Offers</div>
                                <div className="block-features__subtitle">Discounts up to 90%</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div className="block block-products-carousel" data-layout="grid-4">
                <Container>
                    <div className="block-header">
                        <h3 className="block-header__title">Sản Phẩm</h3>
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
                                            <a href="product.html">
                                                <Card.Img variant="top" src={`data:image/jpg;base64,${item.Anh}`} alt="" />
                                            </a>
                                        </div>
                                        <div className="product-card__info">
                                            <div className="product-card__name">
                                                <a href="product.html">
                                                    {item.Ten.length > 11 ? `${item.Ten.substring(0, 11)}...` : item.Ten}
                                                </a>
                                            </div>
                                        </div>
                                        <div className="product-card__actions">
                                            <div className="product-card__availability">
                                                Availability: <span className="text-success">In Stock</span>
                                            </div>
                                            <div className="product-card__prices">$1,019.00</div>
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

    );
}

export default Home;
