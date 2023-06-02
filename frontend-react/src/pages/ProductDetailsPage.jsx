import React, { Component, Fragment } from "react";
import FooterDesktop from "../components/common/FooterDesktop";
import NavMenuDesktop from "../components/common/NavMenuDesktop";
import ProductDetails from "../components/ProductDetails/ProductDetails";
import { useParams } from "react-router-dom";
import axios from "axios";
import AppURL from "../api/AppURL";
import ProductDetailsLoading from "../components/PlaceHolder/ProductDetailsLoading";

export function withRouter(Children) {
  return (props) => {
    const match = { params: useParams() };
    return <Children {...props} match={match} />;
  };
}

class ProductDetailsPage extends Component {
  constructor(props) {
    super(props);
    this.state = {
      Code: this.props.match.params.code,
      ProductData: [],
      isLoading: "",
      mainDiv: "d-none",
    };
  }

  async componentDidMount() {
    window.scroll(0, 0);
    try {
      const response = await axios.get(AppURL.ProductDetails(this.state.Code));
      this.setState({
        ProductData: response.data,
        isLoading: "d-none",
        mainDiv: "",
      });
    } catch (error) {
      // Handle the error
    }
  }

  render() {
    const User = this.props.user;
    if (this.state.mainDiv === "d-none") {
      return (
        <Fragment>
          <NavMenuDesktop />
          <ProductDetailsLoading isLoading={this.state.isLoading} />
          <FooterDesktop />
        </Fragment>
      );
    } else {
      return (
        <Fragment>
          <NavMenuDesktop />
          <ProductDetails user={User} data={this.state.ProductData} />
          <FooterDesktop />
        </Fragment>
      );
    }
  }
}
export default withRouter(ProductDetailsPage);

// from chat gpt

// import React, { Component, Fragment } from 'react';
// import { withRouter } from "react-router-dom";
// import axios from 'axios';
// import NavMenuDesktop from './NavMenuDesktop';
// import ProductDetailsLoading from './ProductDetailsLoading';
// import ProductDetails from './ProductDetails';
// import FooterDesktop from './FooterDesktop';
// import AppURL from './AppURL';

// class ProductDetailsPage extends Component {
//   constructor(props) {
//     super(props);
//     this.state = {
//       Code: this.props.match.params.code,
//       ProductData: null,
//       isLoading: true,
//     };
//   }

//   async componentDidMount() {
//     window.scrollTo(0, 0);
//     try {
//       const response = await axios.get(AppURL.ProductDetails(this.state.Code));
//       this.setState({
//         ProductData: response.data,
//         isLoading: false,
//       });
//     } catch (error) {
//       console.error("Error fetching product details:", error);
//       // Handle the error
//     }
//   }

//   render() {
//     const { user } = this.props;
//     const { ProductData, isLoading } = this.state;

//     return (
//       <Fragment>
//         <NavMenuDesktop />
//         {isLoading ? (
//           <ProductDetailsLoading />
//         ) : (
//           <ProductDetails user={user} data={ProductData} />
//         )}
//         <FooterDesktop />
//       </Fragment>
//     );
//   }
// }

// export default withRouter(ProductDetailsPage);
