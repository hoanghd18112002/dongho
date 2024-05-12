import React from 'react';

const Header = () => {
    return (
        <>
            <header className="site__header d-lg-block d-none">
                <div className="site-header">
                    <div className="site-header__topbar topbar">
                        <div className="topbar__container container">
                            <div className="topbar__row">
                                <div className="topbar__item topbar__item--link">
                                    <a className="topbar-link" href="about-us.html">About Us</a>
                                </div>
                                <div className="topbar__item topbar__item--link">
                                    <a className="topbar-link" href="contact-us.html">Contacts</a>
                                </div>
                                <div className="topbar__item topbar__item--link">
                                    <a className="topbar-link" href="#">Store Location</a>
                                </div>
                                <div className="topbar__item topbar__item--link">
                                    <a className="topbar-link" href="track-order.html">Track Order</a>
                                </div>
                                <div className="topbar__item topbar__item--link">
                                    <a className="topbar-link" href="blog-classic.html">Blog</a>
                                </div>
                                <div className="topbar__spring"></div>
                                <div className="topbar__item">
                                    <div className="topbar-dropdown">
                                        <button className="topbar-dropdown__btn" type="button">My Account
                                            <svg width="7px" height="5px">
                                                <use xlinkHref="images/sprite.svg#arrow-rounded-down-7x5"></use>
                                            </svg>
                                        </button>
                                        <div className="topbar-dropdown__body">
                                            <ul className="menu menu--layout--topbar">
                                                <li><a href="account.html">Login</a></li>
                                                <li><a href="account.html">Register</a></li>
                                                <li><a href="#">Orders</a></li>
                                                <li><a href="#">Addresses</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div className="site-header__middle container">
                        <div className="site-header__search">
                            <div className="search">
                                <form className="search__form" action="#">
                                    <input className="search__input" name="search" placeholder="Search over 10,000 products" aria-label="Site search" type="text" autoComplete="off" />
                                    <button className="search__button" type="submit">
                                        <svg width="20px" height="20px">
                                            <use xlinkHref="/assets/images/sprite.svg#search-20"></use>
                                        </svg>
                                    </button>
                                    <div className="search__border"></div>
                                </form>
                            </div>
                        </div>
                        <div className="site-header__phone">
                            <div className="site-header__phone-title">Customer Service</div>
                            <div className="site-header__phone-number">(800) 060-0730</div>
                        </div>
                    </div>
                    <div className="site-header__nav-panel">
                        <div className="nav-panel">
                            <div className="nav-panel__container container">
                                <div className="nav-panel__row">
                                    <div className="nav-panel__departments">
                                        <div className="departments" data-departments-fixed-by="">
                                            <div className="departments__body">
                                                <div className="departments__links-wrapper">
                                                    <ul className="departments__links">
                                                        <li className="departments__item"><a href="#">Power Machinery</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <button className="departments__button">
                                                <svg className="departments__button-icon" width="18px" height="14px">
                                                    <use xlinkHref="/assets/images/sprite.svg#menu-18x14"></use>
                                                </svg>
                                                Shop By Category
                                                <svg className="departments__button-arrow" width="9px" height="6px">
                                                    <use xlinkHref="/assets/images/sprite.svg#arrow-rounded-down-9x6"></use>
                                                </svg>
                                            </button>
                                        </div>
                                    </div>
                                    <div className="nav-panel__nav-links nav-links">
                                        <ul className="nav-links__list">
                                            <li className="nav-links__item"><a href="contact-us.html"><span>Contact Us</span></a></li>
                                            <li className="nav-links__item"><a href="https://themeforest.net/user/kos9/portfolio"><span>Buy Theme</span></a></li>
                                        </ul>
                                    </div>
                                    <div className="nav-panel__indicators">
                                        <div className="indicator">
                                            <a href="wishlist.html" className="indicator__button">
                                                <span className="indicator__area">
                                                    <svg width="20px" height="20px">
                                                        <use xlinkHref="/assets/images/sprite.svg#heart-20"></use>
                                                    </svg>
                                                    <span className="indicator__value">0</span>
                                                </span>
                                            </a>
                                        </div>
                                        <div className="indicator indicator--trigger--click">
                                            <a href="cart.html" className="indicator__button">
                                                <span className="indicator__area">
                                                    <svg width="20px" height="20px">
                                                        <use xlinkHref="/assets/images/sprite.svg#cart-20"></use>
                                                    </svg>
                                                    <span className="indicator__value">3</span>
                                                </span>
                                            </a>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
        </>
    );
}

export default Header;
