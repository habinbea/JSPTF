<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.example.dao.TFDAO, com.example.bean.TFVO"%>
<%@ page import="com.example.dao.TFDAO" %>
<!DOCTYPE html>
<!-- saved from url=(0049)https://getbootstrap.com/docs/5.3/examples/album/ -->
<html lang="en" data-bs-theme="light">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<script src="./Album example · Bootstrap v5.3_files/color-modes.js.download"></script>

	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta name="description" content="" />
	<meta
			name="author"
			content="Mark Otto, Jacob Thornton, and Bootstrap contributors"
	/>
	<meta name="generator" content="Hugo 0.118.2" />
	<title>add</title>
	<link
			href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
			rel="stylesheet"
			integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
			crossorigin="anonymous"
	/>
	<link rel="stylesheet" href="my.css" />

	<link
			rel="canonical"
			href="https://getbootstrap.com/docs/5.3/examples/album/"
	/>

	<link
			rel="stylesheet"
			href="./Album example · Bootstrap v5.3_files/css@3"
	/>

	<link
			href="./Album example · Bootstrap v5.3_files/bootstrap.min.css"
			rel="stylesheet"
			integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
			crossorigin="anonymous"
	/>

	<!-- Favicons -->
	<link
			rel="apple-touch-icon"
			href="https://getbootstrap.com/docs/5.3/assets/img/favicons/apple-touch-icon.png"
			sizes="180x180"
	/>
	<link
			rel="icon"
			href="https://getbootstrap.com/docs/5.3/assets/img/favicons/favicon-32x32.png"
			sizes="32x32"
			type="image/png"
	/>
	<link
			rel="icon"
			href="https://getbootstrap.com/docs/5.3/assets/img/favicons/favicon-16x16.png"
			sizes="16x16"
			type="image/png"
	/>
	<link
			rel="manifest"
			href="https://getbootstrap.com/docs/5.3/assets/img/favicons/manifest.json"
	/>
	<link
			rel="mask-icon"
			href="https://getbootstrap.com/docs/5.3/assets/img/favicons/safari-pinned-tab.svg"
			color="#712cf9"
	/>
	<link
			rel="icon"
			href="https://getbootstrap.com/docs/5.3/assets/img/favicons/favicon.ico"
	/>
	<meta name="theme-color" content="#712cf9" />

	<style>
		.bd-placeholder-img {
			font-size: 1.125rem;
			text-anchor: middle;
			-webkit-user-select: none;
			-moz-user-select: none;
			user-select: none;
		}

		@media (min-width: 768px) {
			.bd-placeholder-img-lg {
				font-size: 3.5rem;
			}
		}

		.b-example-divider {
			width: 100%;
			height: 3rem;
			background-color: rgba(0, 0, 0, 0.1);
			border: solid rgba(0, 0, 0, 0.15);
			border-width: 1px 0;
			box-shadow: inset 0 0.5em 1.5em rgba(0, 0, 0, 0.1),
			inset 0 0.125em 0.5em rgba(0, 0, 0, 0.15);
		}

		.b-example-vr {
			flex-shrink: 0;
			width: 1.5rem;
			height: 100vh;
		}

		.bi {
			vertical-align: -0.125em;
			fill: currentColor;
		}

		.nav-scroller {
			position: relative;
			z-index: 2;
			height: 2.75rem;
			overflow-y: hidden;
		}

		.nav-scroller .nav {
			display: flex;
			flex-wrap: nowrap;
			padding-bottom: 1rem;
			margin-top: -1px;
			overflow-x: auto;
			text-align: center;
			white-space: nowrap;
			-webkit-overflow-scrolling: touch;
		}

		.btn-bd-primary {
			--bd-violet-bg: #712cf9;
			--bd-violet-rgb: 112.520718, 44.062154, 249.437846;

			--bs-btn-font-weight: 600;
			--bs-btn-color: var(--bs-white);
			--bs-btn-bg: var(--bd-violet-bg);
			--bs-btn-border-color: var(--bd-violet-bg);
			--bs-btn-hover-color: var(--bs-white);
			--bs-btn-hover-bg: #6528e0;
			--bs-btn-hover-border-color: #6528e0;
			--bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
			--bs-btn-active-color: var(--bs-btn-hover-color);
			--bs-btn-active-bg: #5a23c8;
			--bs-btn-active-border-color: #5a23c8;
		}

		.bd-mode-toggle {
			z-index: 1500;
		}

		.bd-mode-toggle .dropdown-menu .active .bi {
			display: block !important;
		}
	</style>
</head>
<body>
<svg xmlns="http://www.w3.org/2000/svg" class="d-none">
	<symbol id="check2" viewBox="0 0 16 16">
		<path
				d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"
		></path>
	</symbol>
	<symbol id="circle-half" viewBox="0 0 16 16">
		<path
				d="M8 15A7 7 0 1 0 8 1v14zm0 1A8 8 0 1 1 8 0a8 8 0 0 1 0 16z"
		></path>
	</symbol>
	<symbol id="moon-stars-fill" viewBox="0 0 16 16">
		<path
				d="M6 .278a.768.768 0 0 1 .08.858 7.208 7.208 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277.527 0 1.04-.055 1.533-.16a.787.787 0 0 1 .81.316.733.733 0 0 1-.031.893A8.349 8.349 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.752.752 0 0 1 6 .278z"
		></path>
		<path
				d="M10.794 3.148a.217.217 0 0 1 .412 0l.387 1.162c.173.518.579.924 1.097 1.097l1.162.387a.217.217 0 0 1 0 .412l-1.162.387a1.734 1.734 0 0 0-1.097 1.097l-.387 1.162a.217.217 0 0 1-.412 0l-.387-1.162A1.734 1.734 0 0 0 9.31 6.593l-1.162-.387a.217.217 0 0 1 0-.412l1.162-.387a1.734 1.734 0 0 0 1.097-1.097l.387-1.162zM13.863.099a.145.145 0 0 1 .274 0l.258.774c.115.346.386.617.732.732l.774.258a.145.145 0 0 1 0 .274l-.774.258a1.156 1.156 0 0 0-.732.732l-.258.774a.145.145 0 0 1-.274 0l-.258-.774a1.156 1.156 0 0 0-.732-.732l-.774-.258a.145.145 0 0 1 0-.274l.774-.258c.346-.115.617-.386.732-.732L13.863.1z"
		></path>
	</symbol>
	<symbol id="sun-fill" viewBox="0 0 16 16">
		<path
				d="M8 12a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z"
		></path>
	</symbol>
</svg>

<div
		class="dropdown position-fixed bottom-0 end-0 mb-3 me-3 bd-mode-toggle"
>
	<button
			class="btn btn-dark py-2 dropdown-toggle d-flex align-items-center"
			id="bd-theme"
			type="button"
			aria-expanded="false"
			data-bs-toggle="dropdown"
			aria-label="Toggle theme (light)"
	>
		<svg class="bi my-1 theme-icon-active" width="1em" height="1em">
			<use href="#sun-fill"></use>
		</svg>
		<span class="visually-hidden" id="bd-theme-text">Toggle theme</span>
	</button>
	<ul
			class="dropdown-menu dropdown-menu-end shadow"
			aria-labelledby="bd-theme-text"
	>
		<li>
			<button
					type="button"
					class="dropdown-item d-flex align-items-center active"
					data-bs-theme-value="light"
					aria-pressed="true"
			>
				<svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em">
					<use href="#sun-fill"></use>
				</svg>
				Light
				<svg class="bi ms-auto d-none" width="1em" height="1em">
					<use href="#check2"></use>
				</svg>
			</button>
		</li>
		<li>
			<button
					type="button"
					class="dropdown-item d-flex align-items-center"
					data-bs-theme-value="dark"
					aria-pressed="false"
			>
				<svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em">
					<use href="#moon-stars-fill"></use>
				</svg>
				Dark
				<svg class="bi ms-auto d-none" width="1em" height="1em">
					<use href="#check2"></use>
				</svg>
			</button>
		</li>
		<li>
			<button
					type="button"
					class="dropdown-item d-flex align-items-center"
					data-bs-theme-value="auto"
					aria-pressed="false"
			>
				<svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em">
					<use href="#circle-half"></use>
				</svg>
				Auto
				<svg class="bi ms-auto d-none" width="1em" height="1em">
					<use href="#check2"></use>
				</svg>
			</button>
		</li>
	</ul>
</div>

<header data-bs-theme="dark">
	<div class="collapse text-bg-dark" id="navbarHeader">
		<div class="container">
			<div class="row">
				<div class="col-sm-8 col-md-7 py-4">
					<h4>About</h4>
					<p class="text-body-secondary">
						Hi! My name is Habin Bea from Handong Global University.<br />
						I am currently doing research in transcription factors that bind
						to the LDLR promoter.<br />
						I am especially interested in each transcription factor's
						feedback regulation!
					</p>
				</div>
				<div class="col-sm-4 offset-md-1 py-4">
					<h4>Contact</h4>
					<ul class="list-unstyled">
						<li>
							<a class="text-white" href="mailto:habinbea@handong.ac.kr"
							>habinbea@handong.ac.kr</a
							>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="navbar navbar-dark bg-dark shadow-sm">
		<div class="container">
			<a href="index.html" class="navbar-brand d-flex align-items-center">
				<svg width="10%" viewBox="0 0 256 193" fill="none" xmlns="http://www.w3.org/2000/svg">
					<g clip-path="url(#clip0_47_6)">
						<path fill-rule="evenodd" clip-rule="evenodd" d="M-0.5 -0.5C84.8333 -0.5 170.167 -0.5 255.5 -0.5C255.5 63.8333 255.5 128.167 255.5 192.5C170.167 192.5 84.8333 192.5 -0.5 192.5C-0.5 128.167 -0.5 63.8333 -0.5 -0.5Z" fill="#212529"/>
						<path fill-rule="evenodd" clip-rule="evenodd" d="M37.4999 80.5C37.2171 79.7109 36.7171 79.0442 35.9999 78.5C35.1711 97.0046 35.3378 115.338 36.4999 133.5C42.9257 133.748 48.9257 132.248 54.4999 129C55.293 125.589 55.793 122.089 55.9999 118.5C59.7872 123.956 63.9539 129.123 68.4999 134C59.1253 142.268 48.1253 146.435 35.4999 146.5C31.4446 146.425 27.4446 145.925 23.4999 145C17.7475 141.819 17.0808 137.819 21.4999 133C22.7931 132.51 24.1265 132.343 25.4999 132.5C26.2089 133.404 27.2089 133.737 28.4999 133.5C28.8305 111.993 28.4972 90.6601 27.4999 69.5C24.8291 67.0659 21.9957 64.7326 18.9999 62.5C17.31 57.5422 18.9767 54.5422 23.9999 53.5C27.4877 54.3273 30.6543 55.8273 33.4999 58C37.3332 61.8333 41.1666 65.6667 44.9999 69.5C54.0616 82.8994 62.7282 96.5661 70.9999 110.5C77.3855 119.56 85.5522 126.393 95.4999 131C99.9625 132.975 104.629 133.808 109.5 133.5C109.667 114.164 109.5 94.8305 109 75.5C101.667 84.8241 95.3338 94.8241 89.9999 105.5C89.6666 111.167 89.3332 116.833 88.9999 122.5C83.3125 118.313 78.4792 113.313 74.4999 107.5C81.7369 94.1063 89.5703 81.1063 97.9999 68.5C118.515 46.0007 142.682 41.1673 170.5 54C178.962 60.1278 186.462 67.2945 193 75.5C201.084 88.6697 209.417 101.67 218 114.5C218.5 96.1697 218.667 77.8364 218.5 59.5C211.632 59.1336 205.299 60.8003 199.5 64.5C198.675 68.1224 198.175 71.789 198 75.5C194.024 70.0234 189.858 64.6901 185.5 59.5C199.188 47.6638 214.855 44.1638 232.5 49C236.5 52.6667 236.5 56.3333 232.5 60C230.19 60.4966 227.857 60.6633 225.5 60.5C225.333 81.5026 225.5 102.503 226 123.5C229 125.833 232 128.167 235 130.5C236.552 136.073 234.552 139.406 229 140.5C220.821 135.905 213.821 129.905 208 122.5C199.166 109.503 190.833 96.1697 183 82.5C173.637 68.9458 160.804 61.6125 144.5 60.5C144.333 79.5029 144.5 98.5029 145 117.5C148.147 114.532 150.814 111.198 153 107.5C156.414 101.003 160.081 94.6697 164 88.5C164.17 82.8042 164.67 77.1376 165.5 71.5C171.37 75.2027 176.037 80.036 179.5 86C171.956 101.699 162.623 116.199 151.5 129.5C130.324 148.872 106.99 151.706 81.4999 138C74.0398 132.874 67.5398 126.707 61.9999 119.5C53.8224 106.472 45.6557 93.4719 37.4999 80.5Z" fill="#F9F9FA"/>
						<path fill-rule="evenodd" clip-rule="evenodd" d="M132.5 60.5C133.833 60.5 135.167 60.5 136.5 60.5C136.5 82.5 136.5 104.5 136.5 126.5C130.719 130.2 124.386 132.534 117.5 133.5C117.167 111.157 117.5 88.8234 118.5 66.5C122.758 63.5257 127.425 61.5257 132.5 60.5Z" fill="#212529"/>
						<path fill-rule="evenodd" clip-rule="evenodd" d="M37.4999 80.5C36.5032 97.9921 36.1698 115.659 36.4999 133.5C35.3378 115.338 35.1711 97.0046 35.9999 78.5C36.7171 79.0442 37.2171 79.7109 37.4999 80.5Z" fill="#373B3F"/>
					</g>
					<defs>
						<clipPath id="clip0_47_6">
							<rect width="256" height="193" fill="white"/>
						</clipPath>
					</defs>
				</svg>

				<strong>TF</strong>
			</a>
			<button
					class="navbar-toggler"
					type="button"
					data-bs-toggle="collapse"
					data-bs-target="#navbarHeader"
					aria-controls="navbarHeader"
					aria-expanded="false"
					aria-label="Toggle navigation"
			>
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>
	</div>
</header>

<%
	String tfid = request.getParameter("id");
	TFDAO tfdao = new TFDAO();
	TFVO tf = tfdao.getTF(Integer.parseInt(tfid));
%>
<main>
	<form action="editTFVO.jsp" method="post">
	<input type="hidden" name="tfid" value="<%=tf.getTfid() %>"/>
	<section class="py-5 text-center container">
		<div class="row py-lg-5">
			<div class="col-lg-6 col-md-8 mx-auto">
				<input
						type="text"
						class="form-control form-control-lg mb-3"
						name="tfname"
						placeholder="TF name"
						value="<%=tf.getTfname() %>"
				/>
				<input
						type="text"
						class="form-control form-control-sm mb-3"
						name="tffullname"
						placeholder="TF full name"
						value="<%=tf.getTffullname() %>"
				/>
				<div class="mb-3">
					<div class="text-start">
						<label for="formFileSm" class="form-label"
						>Image file of TF motif for thumbnail</label
						>
					</div>

					<input
							class="form-control form-control-sm"
							id="formFileSm"
							type="file"
					/>
				</div>
				<p>
					<input type="submit" value="Edit" onclick="edit_confirm()" class="btn btn-outline-dark"  style="width: 5.5rem;" />
				</p>
			</div>
		</div>
	</section>

	<div class="album py-5 bg-body-tertiary">
		<div class="container">
			<div class="row g-3">
				<div class="col-12">
					<div class="card shadow-sm mx-auto">
						<div class="card-body">
							<p class="card-text">General Information</p>
							<div
									class="d-flex justify-content-between align-items-center mb-3"
							>
                    <textarea
							class="form-control form-control-sm"
							name="generalinformation"
							rows="4"
					><%=tf.getGeneralinformation() %></textarea
					>
							</div>
							<p class="card-text">Feedback regulation</p>
							<div
									class="d-flex justify-content-between align-items-center mb-3"
							>
                    <textarea
							class="form-control form-control-sm"
							name="feedbackregulation"
							rows="4"
					><%=tf.getFeedbackregulation() %></textarea
					>
							</div>
							<p class="card-text">References</p>
							<div
									class="d-flex justify-content-between align-items-center"
							>
                    <textarea
							class="form-control form-control-sm"
							name="reference"
							rows="4"
					><%=tf.getReference() %></textarea
					>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</form>
</main>

<footer class="text-body-secondary py-4">
	<div class="container">
		<p class="float-end mb-1">
			<a href="#">Back to top</a>
		</p>
		<p class="mb-1">
			Handong Global University <br />
			School of Life Science <br />
			ARKLAB <br />
			Habin Bea
		</p>
	</div>
</footer>
<script
		src="./Album example · Bootstrap v5.3_files/bootstrap.bundle.min.js.download"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"
></script>
<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"
></script>
</body>
</html>
