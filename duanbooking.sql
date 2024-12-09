-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 09, 2024 lúc 09:31 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duanbooking`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_11_15_143013_create_products_table', 1),
(6, '2024_11_26_085959_create_orders_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `ward` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `order_detail` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `token` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `name`, `phone`, `email`, `city`, `district`, `ward`, `address`, `note`, `order_detail`, `status`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Huỳnh Phước Trung', '0338969230', 'phuoctrung1905@gmail.com', NULL, NULL, NULL, '110/2 Bà Hom - Phường 13 - Quận 6', 'Ngày nhận 15-12-2025( 1 phòng 2 giường đơn)', '{\"3\":\"1\",\"15\":\"1\",\"16\":\"1\"}', 0, NULL, '2024-11-26 03:00:48', '2024-11-26 03:00:48'),
(2, 'Huỳnh Phước Huy', '0338969230', 'phuoctrung1905@gmail.com', 'Thành phố Hồ Chí Minh', 'Quận 6', 'Phường 13', '110/2 Bà Hom - Phường 13 - Quận 6', 'Ngày nhận 15-12-2025( 1 phòng 2 giường đơn)', '{\"3\":\"1\",\"15\":\"1\",\"16\":\"1\"}', 0, NULL, '2024-11-26 03:01:38', '2024-11-26 03:01:38'),
(3, 'Huỳnh Phước An', '0338969230', 'phuoctrung1905@gmail.com', 'Thành phố Hồ Chí Minh', 'Quận 6', 'Phường 13', '110/2 Bà Hom - Phường 13 - Quận 6', 'Ngày nhận 15-12-2025( 1 phòng 2 giường đơn)', '{\"15\":\"1\",\"16\":\"1\"}', 0, NULL, '2024-11-26 03:05:10', '2024-11-26 03:05:10'),
(4, 'Dư Bích Ngân', '0986073689', 'nganlong689@gmail.com', 'Thành phố Hồ Chí Minh', 'Quận 6', 'Phường 13', '36/6 Kinh Dương Vương', 'Ngày nhận 14-12-2025 phòng 12 giường đơn', '{\"4\":\"1\"}', 0, NULL, '2024-11-27 05:34:10', '2024-11-27 05:34:10'),
(5, 'Huỳnh Phước Trung1', '0338969230', 'phuoctrung1905@gmail.com', 'Thành phố Hồ Chí Minh', 'Quận 6', 'Phường 13', '110/2 Bà Hom', 'Ngày nhận 15-12-2025 phòng 2 giường đơn', '{\"4\":\"2\"}', 0, NULL, '2024-11-27 05:41:11', '2024-11-27 05:41:11'),
(6, 'TestMail', '0338969230', 'phuoctrung1905@gmail.com', 'Thành phố Hồ Chí Minh', 'Quận 6', 'Phường 13', '110/2 Bà Hom', 'Ngày nhận 15-12-2025( 1 phòng 2 giường đơn)', '{\"3\":\"1\",\"4\":\"1\"}', 0, NULL, '2024-11-27 07:56:14', '2024-11-27 07:56:14'),
(7, 'TestMail', '0338969230', 'phuoctrung1905@gmail.com', 'Thành phố Hồ Chí Minh', NULL, NULL, '110/2 Bà Hom', 'Ngày nhận 15-12-2025( 1 phòng 2 giường đơn)', '{\"3\":\"1\",\"4\":\"1\"}', 0, NULL, '2024-11-27 08:24:39', '2024-11-27 08:24:39'),
(8, 'Huỳnh Phước Trung12', '0338969230', 'phuoctrung1905@gmail.com', 'Thành phố Hà Nội', 'Quận Hoàn Kiếm', 'Phường Hàng Mã', '110', 'Ngày nhận 15-12-2025( 1 phòng 2 giường đơn)', '{\"3\":\"2\",\"4\":\"2\"}', 0, NULL, '2024-11-27 09:54:39', '2024-11-27 09:54:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL,
  `price_nomal` varchar(255) DEFAULT NULL,
  `price_sale` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `material`, `price_nomal`, `price_sale`, `description`, `content`, `image`, `images`, `created_at`, `updated_at`) VALUES
(3, 'DeLaSea Hạ Long', '5 sao', '3001358', '946059', 'Nằm ở Hạ Long, cách Bãi biển Marina Bay 14 phút đi bộ.\r\nDeLaSea Ha Long Hotel cung cấp chỗ nghỉ có trung tâm thể dục, chỗ đậu xe riêng miễn phí, khu vườn và nhà hàng. Với quầy bar, chỗ nghỉ nằm cách Bãi Cháy 2.3 km. Chỗ nghỉ cung cấp lễ tân 24/24, dịch vụ đưa đón sân bay, câu lạc bộ trẻ em và Wi-Fi miễn phí.', 'Các tiện nghi được ưa chuộng nhất\r\nHồ bơi trong nhà\r\nWiFi miễn phí\r\nXe đưa đón sân bay\r\nPhòng gia đình\r\nChỗ đỗ xe miễn phí\r\nPhòng không hút thuốc\r\nTrung tâm Spa & chăm sóc sức khoẻ\r\nLễ tân 24 giờ\r\nQuầy bar\r\n\r\nBữa sáng tuyệt vời\r\nĐiểm nổi bật của chỗ nghỉ\r\nĐịa điểm hàng đầu: Được khách gần đây đánh giá cao (8,3 điểm)', '/storage/images/1732029028-hot-product-item.svg', '/storage/images/1732029035-product-detail0 - Copy.jpg*/storage/images/1732029035-product-detail0.jpg*/storage/images/1732029035-product-detail1 - Copy.jpg*/storage/images/1732029035-product-detail1.jpg', '2024-11-19 08:12:23', '2024-12-02 01:23:25'),
(4, 'Ibis Styles Vũng Tàu', '3 sao', '1839227', '1163992', '•	Chất liệu: 100% Cotton\r\n\r\n•	Định lượng vải 220gsm dày dặn\r\n\r\n\r\n•	Vải được xử lí hoàn thiện giúp bề mặt vải ít xù lông, mềm mịn và bền màu hơn\r\n\r\n•	Độ dày vải vừa phải, thoải mái, thoáng mát\r\n\r\n•	Phù hợp mặc hàng ngày\r\n\r\n•	Sản xuất tại Nhà máy Tessellation (TGV), Việt Nam. Xem nhà máy\r\n\r\n•	Người mẫu: 186cm - 77kg, mặc áo 2XL', 'Khách tại chỗ nghỉ có thể thưởng thức bữa sáng thực đơn buffet.\r\n\r\nIbis Styles Vung Tau có sân chơi trẻ em.\r\n\r\nKhách sạn cách Bãi Dứa 2.3 km và Bãi Trước 2.5 km.\r\n\r\nCác cặp đôi đặc biệt thích địa điểm này — họ cho điểm 9,0 khi đánh giá chuyến đi hai người.', '/storage/images/1732103646-hot-product-item.svg', '/storage/images/1732103655-product-detail0 - Copy.jpg*/storage/images/1732103655-product-detail0.jpg*/storage/images/1732103655-product-detail1 - Copy.jpg', '2024-11-20 04:54:19', '2024-11-23 21:42:34'),
(13, 'MerPerle Dalat Hotel', '5 sao', '1714533', '1439838', 'Khách sạn MerPerle Dalat được xây dựng như một khối kiến trúc bán cổ điển nổi bật giữa đồi thông nằm trên trục đường với nhiều biệt thự cổ nhất tại Đà Lạt. Công trình kiến trúc có chiều cao 10 tầng đạt chuẩn 5 sao, khách sạn MerPerle Dalat còn được thiết kế với trục cảnh quang ấn tượng, hoà vào không khí lãng mạn tại thành phố ngàn hoa.', 'Khách tại chỗ nghỉ có thể thưởng thức bữa sáng thực đơn buffet.\r\n\r\nCác cặp đôi đặc biệt thích địa điểm này — họ cho điểm 9,0 khi đánh giá chuyến đi hai người.', '/storage/images/1732026888-hot-product-item.svg', '/storage/images/1732103655-product-detail0 - Copy.jpg*/storage/images/1732103655-product-detail0.jpg*/storage/images/1732103655-product-detail1 - Copy.jpg', '2024-11-20 04:54:19', '2024-12-02 07:46:19'),
(15, 'Khách sạn La Vague', '5 sao', '612333', '612333', 'Nằm ở Vũng Tàu, cách Bãi Sau chỉ vài bước chân, ibis Styles Vung Tau cung cấp chỗ nghỉ có trung tâm thể dục, chỗ đậu xe riêng miễn phí, phòng chờ chung và sân hiên. Ngoài nhà hàng, khách sạn 3 sao này còn có các phòng với điều hòa được trang bị Wi-Fi miễn phí, trong đó mỗi phòng đều có phòng tắm riêng. Chỗ nghỉ này cung cấp câu lạc bộ trẻ em, quầy lễ tân 24 giờ và phòng giữ hành lý cho khách.', 'Khách tại chỗ nghỉ có thể thưởng thức bữa sáng thực đơn buffet.\r\n\r\nIbis Styles Vung Tau có sân chơi trẻ em.\r\n\r\nKhách sạn cách Bãi Dứa 2.3 km và Bãi Trước 2.5 km.\r\n\r\nCác cặp đôi đặc biệt thích địa điểm này — họ cho điểm 9,0 khi đánh giá chuyến đi hai người.', '/storage/images/1732026889-hot-product-item.svg', '/storage/images/1732103655-product-detail0 - Copy.jpg*/storage/images/1732103655-product-detail0.jpg*/storage/images/1732103655-product-detail1 - Copy.jpg', '2024-11-20 04:54:19', '2024-12-02 07:47:11'),
(16, 'Maximilan Đà Nẵng', '5 sao', '1057667', '933157', 'Nằm ở Vũng Tàu, cách Bãi Sau chỉ vài bước chân, ibis Styles Vung Tau cung cấp chỗ nghỉ có trung tâm thể dục, chỗ đậu xe riêng miễn phí, phòng chờ chung và sân hiên. Ngoài nhà hàng, khách sạn 3 sao này còn có các phòng với điều hòa được trang bị Wi-Fi miễn phí, trong đó mỗi phòng đều có phòng tắm riêng. Chỗ nghỉ này cung cấp câu lạc bộ trẻ em, quầy lễ tân 24 giờ và phòng giữ hành lý cho khách.', 'Khách tại chỗ nghỉ có thể thưởng thức bữa sáng thực đơn buffet.\r\n\r\nIbis Styles Vung Tau có sân chơi trẻ em.\r\n\r\nKhách sạn cách Bãi Dứa 2.3 km và Bãi Trước 2.5 km.\r\n\r\nCác cặp đôi đặc biệt thích địa điểm này — họ cho điểm 9,0 khi đánh giá chuyến đi hai người.', '/storage/images/1732103645-hot-product-item.svg', '/storage/images/1732103655-product-detail0 - Copy.jpg*/storage/images/1732103655-product-detail0.jpg*/storage/images/1732103655-product-detail1 - Copy.jpg', '2024-11-20 04:54:19', '2024-11-20 04:54:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'phuoctrung', 'phuoctrung5019@gmail.com', NULL, '$2y$10$idbAqo3h/SxeYb2asA0rZeYdhFjOMS6YM/tSpS4leXKlO0BuowlK6', NULL, NULL, NULL),
(2, 'phuoctrung', 'phuoctrung1905@gmail.com', NULL, '$2y$10$idbAqo3h/SxeYb2asA0rZeYdhFjOMS6YM/tSpS4leXKlO0BuowlK6', NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
