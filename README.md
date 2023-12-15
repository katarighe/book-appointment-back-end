<a name="readme-top"></a>

<div align="center">

  <img src="bookadoc-logo.png" alt="logo" width="140"  height="auto" />
  <br/>

  <h3><b>Book A Doctor Appointment (Backend)</b></h3>

</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
    - [Frontend Version](#frontend-version)
    - [Kanban Board](#kanban-board)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 Book A Doctor appointments (Backend) <a name="about-project"></a>

The Book A Doctor appointments (Backend) is a Rails application specifically designed for managing doctor appointments. This application utilizes API endpoints that allow users to load, create, and delete doctor information and appointments. Users must either sign up for an account or sign in to access these API endpoints.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://developer.mozilla.org/en/docs/Web/HTML">HTML</a></li>
    <li><a href="https://developer.mozilla.org/en/docs/Web/CSS">CSS</a></li>
    <li><a href="https://developer.mozilla.org/en/docs/Web/JavaScript">JavaScript</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
    <li><a href="https://rubyonrails.org/">Rails</a></li>
    <li><a href="https://react.dev/">React</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<details>
<summary>Tests / API</summary>
  <ul>
    <li><a href="https://rspec.info/">Rspec</a></li>
    <li><a href="https://github.com/rswag/rswag/">Rswag</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

The main features of this app include:

- **Load, create, and delete doctors**
- **Load, create and delete appointments / reservations**
- **Signup and Signin feature**
- **Admin and User roles**

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- Fronend Version -->

### Frontend Version <a name="frontend-version"></a>

- [Frontend version](https://github.com/katarighe/book-appointment-front-end)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Kanban Board -->

### Kanban Board <a name="kanban-board"></a>

- [Original Kanban Board](https://github.com/users/katarighe/projects/4/views/1)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

## 🚀 Live Demo <a name="live-demo"></a>

- [Live Demo Link]([https://google.com](https://book-doctor-appointment-frontend.netlify.app/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need to install the following items:

- Ruby
- Ruby on Rails
- PostgreSQL

### Setup

Clone this repository to your desired folder:

```
git clone git@github.com:katarighe/book-appointment-back-end.git
cd book-appointment-back-end
```

### Install

Install this project by using:

```
bundle install
```

Setup database with:

```
rails db:create
rails db:migrate
rails db:seed
```

### Usage

To run the project, execute the following command to start the server:

```
rails server -p 3001
```

Visit http://localhost:3001/ in your browser.

### Run tests

To run tests, run the following commands:

Install npm with:

```
npm install
```

Install rspec with:

```
bundle install
```

and

```
rails generate rspec:install
```

run the test with:

```
rspec spec
```

Visit /coverage/index.html in your browser.

![image](https://github.com/katarighe/book-appointment-back-end/assets/80690364/d0e60d0e-7ab3-4bfe-acb1-b2c06e71ae03)

To open API documentation, please execute the following command:

```
rails rswag:specs:swaggerize
```

Visit http://localhost:3001/api-docs in your browser.

![image](https://github.com/katarighe/book-appointment-back-end/assets/80690364/5c85bba4-0863-4c4e-9cc9-658a9c2b08b3)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Mohamed Aden Ighe**

- GitHub: [@katarighe](https://github.com/katarighe)
- Twitter: [@katarighe](https://twitter.com/katarighe)
- LinkedIn: [@mighe](https://linkedin.com/in/mighe)

👤: **Antoine Makdessy**

- GitHub: [@ANTOINE1128](https://github.com/ANTOINE1128)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/antoine-makdessy/)

👤 **Andry Narson**

- GitHub: [@rbd3](https://github.com/rbd3)
- LinkedIn: [@Andry Narson Rabedesana](https://linkedin.com/in/andry-rabedesana)

👤 **Sodeeq Awoyemi**

- GitHub: [@githubhandle](https://github.com/Errytagedesign)
- Twitter: [@twitterhandle](https://twitter.com/errytage)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/errytagedesigns/)

👤 **Clarence Atim**

- GitHub: [@ClarenceAtim](https://github.com/ClarenceAtim)
- LinkedIn: [@Clarence Atim](https://www.linkedin.com/in/tegum-clarence-atim/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

Here are some future features that could be added to the Book a Doctor appointments app in the future.

- **Medication management**
- **Personalized healthcare plans**
- **Symptom checker**
- **Multilingual support**
- **Electronic health records (EHR)**
- **Clinical decision support**
- **Performance analytics**
- **Appointment reminders**
- **Wait time estimates**
- **Social features**
- **Patient communication**
- **Medical record access**

These are just a few potential future features for the "Book a Doctor" appointments app. The specific features that are implemented will depend on the needs and preferences of the users, as well as the available resources and technology.

It is also important to consider the ethical implications of adding new features, such as the potential for bias in AI-powered tools and the need to protect patient privacy and security.

Ultimately, the goal of any new feature should be to improve the user experience and make it easier for patients and doctors to access and manage healthcare.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

Give a star⭐️ or a thumbs up 👍 if you like this project! You can visit my GitHub profile for more of my projects.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- Project supervised by [Microverse](https://www.microverse.org/)
- [Creative Commons 4.0 License](https://creativecommons.org/licenses/by-nc/4.0/)
- Original design theme is by [Murat Korkmaz on Behance](https://www.behance.net/muratk)
- [Link to the original design theme](https://www.behance.net/gallery/26425031/Vespa-Responsive-Redesign/modules/173005579) by Murat Korkmaz

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
