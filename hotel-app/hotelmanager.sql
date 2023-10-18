-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 18, 2023 lúc 03:43 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hotelmanager`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_src` varchar(255) NOT NULL,
  `alt_text` varchar(255) NOT NULL,
  `publish_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `banner_src`, `alt_text`, `publish_status`, `created_at`, `updated_at`) VALUES
(2, 'public/imgs/MeGUNkMhPCrpA6eWNQKn6OUKh0KcwnIj8hH85VOt.jpg', 'banner1', 'on', '2023-10-18 06:20:20', '2023-10-18 06:20:20'),
(3, 'public/imgs/NhIPGVM1c4Cig5BQUxSUN4ABqcUV9bDJz3Sswuap.jpg', 'banner2', 'on', '2023-10-18 06:20:43', '2023-10-18 06:20:43'),
(4, 'public/imgs/2UQt5fZI0CPdK4usvqyvOdxDTXuuaw1Uk0I6MlAd.jpg', 'banner3', 'on', '2023-10-18 06:20:55', '2023-10-18 06:20:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `checkin_date` varchar(255) NOT NULL,
  `checkout_date` varchar(255) NOT NULL,
  `total_adults` varchar(255) NOT NULL,
  `total_children` varchar(255) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bookings`
--

INSERT INTO `bookings` (`id`, `customer_id`, `room_id`, `checkin_date`, `checkout_date`, `total_adults`, `total_children`, `ref`, `created_at`, `updated_at`) VALUES
(7, 4, 2, '2023-10-17', '2023-10-18', '2', '1', 'admin', '2023-10-17 09:21:49', '2023-10-17 09:21:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `full_name`, `email`, `password`, `mobile`, `address`, `photo`, `created_at`, `updated_at`) VALUES
(4, 'Hoàng Minh Thu', 'thu@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '0967563276', '01', 'public/imgs/uYwPtXP8VPfhb9QEfzJvt5TDSIgcDzmL2YE7or7R.jpg', '2023-10-17 06:56:50', '2023-10-17 06:59:14'),
(5, 'Au quy', 'minzjulion@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '0123456789', '01', 'public/imgs/MBejkww2cByKbta0JoEoWL8ZZUJbvoRI6Agv42sk.png', '2023-10-17 06:58:08', '2023-10-17 06:58:58'),
(6, 'thu', 'minzjullion@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '0967563276', 'hanoi', 'public/imgs/kDebwSYpQn2sD9S6sH0zsS7TPjWC9kakkZqhI7qc.jpg', '2023-10-17 07:01:43', '2023-10-17 07:02:08'),
(7, 'Khuc Kim Anh', 'kimanh@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '0123456789', 'hungyen', '', '2023-10-17 07:03:38', '2023-10-17 07:03:38'),
(8, 'Hoàng Minh Thu', '20010831@st.phenikaa-uni.edu.vn', '7c4a8d09ca3762af61e59520943dc26494f8941b', '0123456789', 'hanoi', '', '2023-10-17 08:01:30', '2023-10-17 08:01:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `departments`
--

INSERT INTO `departments` (`id`, `title`, `detail`, `created_at`, `updated_at`) VALUES
(2, 'thu', 'fvg', '2023-10-14 08:59:06', '2023-10-14 08:59:06'),
(3, 'double', 'double bedroom', '2023-10-16 10:26:16', '2023-10-16 10:26:16');

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
(5, '2023_10_08_100212_create_roomtypes_table', 1),
(6, '2023_10_09_024247_create_rooms_table', 2),
(7, '2023_10_09_024939_add_room_type_id_to_rooms_table', 3),
(8, '2023_10_09_131128_create_customers_table', 4),
(9, '2023_10_12_032233_add_price_to_room_types_table', 5),
(10, '2023_10_12_040756_add_price_to_roomtypes_table', 6),
(11, '2023_10_12_053657_create_admins_table', 7),
(12, '2023_10_12_063714_create_roomtypeimages_table', 8),
(13, '2023_10_14_144903_create_departments_table', 9),
(14, '2023_10_14_153635_create_staff_table', 10),
(15, '2023_10_14_154200_create_staff_table', 11),
(16, '2023_10_15_094707_create_staff_payments_table', 12),
(17, '2023_10_16_161524_create_bookings_table', 13),
(18, '2023_10_17_080905_create_sessions_table', 14),
(19, '2023_10_18_114403_create_services_table', 14),
(20, '2023_10_18_123159_create_testimonials_table', 15),
(21, '2023_10_18_130441_create_banners_table', 16);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `room_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rooms`
--

INSERT INTO `rooms` (`id`, `title`, `created_at`, `updated_at`, `room_type_id`) VALUES
(2, 'good', '2023-10-16 10:25:05', '2023-10-16 10:25:05', 20),
(3, 'room 1', '2023-10-16 11:19:15', '2023-10-16 11:19:15', 19);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roomtypeimages`
--

CREATE TABLE `roomtypeimages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_type_id` int(11) NOT NULL,
  `img_src` text NOT NULL,
  `img_alt` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roomtypeimages`
--

INSERT INTO `roomtypeimages` (`id`, `room_type_id`, `img_src`, `img_alt`, `created_at`, `updated_at`) VALUES
(1, 14, 'public/imgs/mtU1RKpHesFxvLnLPEQ3E2wFu7Am2cD5QNBKuAPy.jpg', 'Luxury', '2023-10-12 02:12:15', '2023-10-12 02:12:15'),
(2, 15, 'public/imgs/Y3qVll97Y3Bu6ImKWQQVHkLGgjJXAkj2x6Vx3175.jpg', 'FEWEFD', '2023-10-14 02:25:40', '2023-10-14 02:25:40'),
(3, 16, 'public/imgs/nW62xRbqDVk1B4NixBWdW4GHN7vTgyQQ0Sk3jQGd.jpg', 'sfgfd', '2023-10-14 02:58:19', '2023-10-14 02:58:19'),
(4, 16, 'public/imgs/FaG1y3HAwTXDr0ebwrVTMyqa99TYEQhDe8EPWAFD.jpg', 'sfgfd', '2023-10-14 02:58:19', '2023-10-14 02:58:19'),
(5, 16, 'public/imgs/YyDgAaDDIX3EQUCe750kGJ0YmXEG5KPuRBiirXnf.jpg', 'sfgfd', '2023-10-14 02:58:19', '2023-10-14 02:58:19'),
(6, 16, 'public/imgs/S7hJ6Gx8iuVJe9UzhO02TaX0DCBk9wghJPDraY0p.jpg', 'sfgfd', '2023-10-14 02:58:19', '2023-10-14 02:58:19'),
(7, 17, 'public/imgs/me5iMJFYS6lpPi1vbAOdGGwH37ZvzYc87gIIyYDQ.jpg', 'thu', '2023-10-14 05:06:32', '2023-10-14 05:06:32'),
(8, 17, 'public/imgs/hHcRlfREYxZp2nTIaCYqV4JZDTfNsmXH3NZjrMqP.jpg', 'thu', '2023-10-14 05:06:32', '2023-10-14 05:06:32'),
(9, 17, 'public/imgs/GfmMVr1FK0SdfAVjPsrMnxz9j8abRAF4mJfxUyFy.jpg', 'thu', '2023-10-14 05:06:32', '2023-10-14 05:06:32'),
(10, 17, 'public/imgs/uwPFACaNkX4NvbGM2pjQuAQTZzPmVgAaFgPNIn0R.jpg', 'thu', '2023-10-14 05:06:32', '2023-10-14 05:06:32'),
(11, 18, 'public/imgs/pspaWEDJeC2Iz6qNXVwIQEBYoBD2c8FCKztBqTkb.jpg', 'Romantic', '2023-10-14 06:26:36', '2023-10-14 06:26:36'),
(12, 18, 'public/imgs/gX1gbFjCC03QI5kGWrAirMk4UgmoOtjKr0KR9OcQ.jpg', 'Romantic', '2023-10-14 06:26:36', '2023-10-14 06:26:36'),
(13, 18, 'public/imgs/FrjpnGT4Pe5zg83HSEXK9wHVevmA6lMNtMkTbPfd.jpg', 'Romantic', '2023-10-14 06:26:36', '2023-10-14 06:26:36'),
(14, 18, 'public/imgs/26LNOp18nFZhLppY4PpuQyHRMqXMjXvUvpVktJ2r.png', 'Romantic', '2023-10-14 06:26:36', '2023-10-14 06:26:36'),
(17, 19, 'public/imgs/l66dZVIz6rSNy5C9T60A1HX4pEyHxelR7jmgQStE.jpg', 'romantic room', '2023-10-14 07:39:37', '2023-10-14 07:39:37'),
(18, 19, 'public/imgs/W4fACYo5JgGMEnHmCCwkXOfZf8F3wfV7GRjJ4rcI.jpg', 'romantic room', '2023-10-14 07:39:37', '2023-10-14 07:39:37'),
(19, 19, 'public/imgs/OQXrc0vMx5BjiHWekgxF6JicjuI7WahdFrIYrv8s.jpg', 'romantic room', '2023-10-14 07:39:37', '2023-10-14 07:39:37'),
(20, 19, 'public/imgs/suAzgGDoc7RSsHcvdPfMqRw5694iNrkt3s8Gm5V2.png', 'romantic room', '2023-10-14 07:39:37', '2023-10-14 07:39:37'),
(21, 19, 'public/imgs/z1ZUPR8kMLa3fv3NRKqN54nqcKeABUGzH46fX9ki.jpg', 'romantic room', '2023-10-14 07:39:37', '2023-10-14 07:39:37'),
(23, 19, 'public/imgs/CGWbnKpHqLqImYcs4uBrPcf5B0OtSHjOYGGxGBh4.jpg', 'romantic room', '2023-10-14 07:39:37', '2023-10-14 07:39:37'),
(26, 20, 'public/imgs/mhy0lOB6RlnO4K3B0ahAS2J80wrYDUa8tBjhRVwx.png', 'Sweet room', '2023-10-16 10:24:48', '2023-10-16 10:24:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roomtypes`
--

CREATE TABLE `roomtypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roomtypes`
--

INSERT INTO `roomtypes` (`id`, `title`, `detail`, `created_at`, `updated_at`, `price`) VALUES
(3, 'Deluxe Room', 'Deluxe Room', '2023-10-09 04:50:00', '2023-10-11 21:13:45', '100'),
(4, 'Premium Room', 'Premium Room', '2023-10-09 04:50:25', '2023-10-11 21:14:04', '1230'),
(19, 'romantic room', 'good', '2023-10-14 06:41:40', '2023-10-14 06:41:40', '5000'),
(20, 'Sweet room', 'so romantic', '2023-10-16 10:24:48', '2023-10-16 10:24:48', '1500');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `small_desc` text NOT NULL,
  `detail_desc` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `services`
--

INSERT INTO `services` (`id`, `title`, `small_desc`, `detail_desc`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'ABC', 'ABC', 'AC', 'public/imgs/EBUXcteU1xztamtn8ZLfqaVSrKs4MhynGAineqRX.jpg', '2023-10-18 05:05:18', '2023-10-18 05:05:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `department_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `bio` text NOT NULL,
  `salary_type` varchar(255) NOT NULL,
  `salary_amt` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `staff`
--

INSERT INTO `staff` (`id`, `full_name`, `department_id`, `photo`, `bio`, `salary_type`, `salary_amt`, `created_at`, `updated_at`) VALUES
(1, 'Hoàng Minh Thu', 2, 'public/imgs/iXSC87kkdTsEf33aH5l1nVGriyG9LRLnNRQGbvsH.jpg', 'ftr', 'daily', '23000', '2023-10-14 08:59:56', '2023-10-14 08:59:56'),
(2, 'Âu Thị Quý', 3, 'public/imgs/I8WWXSjjvyQuoijtTuNiscUM81cheCAFxg6R8bLV.jpg', 'auquy', 'monthly', '50000', '2023-10-16 10:26:49', '2023-10-16 10:26:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `staff_payments`
--

CREATE TABLE `staff_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `testi_cont` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `testimonials`
--

INSERT INTO `testimonials` (`id`, `customer_id`, `testi_cont`, `created_at`, `updated_at`) VALUES
(1, 4, 'BOOKING', '2023-10-18 06:26:42', '2023-10-18 06:26:42');

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
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

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
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roomtypeimages`
--
ALTER TABLE `roomtypeimages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roomtypes`
--
ALTER TABLE `roomtypes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `staff_payments`
--
ALTER TABLE `staff_payments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `testimonials`
--
ALTER TABLE `testimonials`
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
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `roomtypeimages`
--
ALTER TABLE `roomtypeimages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `roomtypes`
--
ALTER TABLE `roomtypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `staff_payments`
--
ALTER TABLE `staff_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
