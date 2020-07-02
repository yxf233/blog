-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2020 年 07 月 02 日 02:18
-- 服务器版本: 5.5.47
-- PHP 版本: 5.3.29

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `blog`
--

-- --------------------------------------------------------

--
-- 表的结构 `blog_admin`
--

CREATE TABLE IF NOT EXISTS `blog_admin` (
  `adminId` int(11) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `PASSWORD` char(32) DEFAULT NULL,
  `createAt` int(11) DEFAULT NULL,
  `loginAt` int(11) DEFAULT NULL,
  `loginIp` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `blog_admin`
--

INSERT INTO `blog_admin` (`adminId`, `username`, `PASSWORD`, `createAt`, `loginAt`, `loginIp`) VALUES
(123456, 'admin', '123456', NULL, 1593623809, '0.0.0.0'),
(123456, 'admin', '123456', NULL, 1593623809, '0.0.0.0');

-- --------------------------------------------------------

--
-- 表的结构 `blog_article`
--

CREATE TABLE IF NOT EXISTS `blog_article` (
  `articleId` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(40) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Image` varchar(128) NOT NULL,
  `Hits` int(11) DEFAULT '0',
  `createAt` int(11) NOT NULL,
  `updateAt` int(11) NOT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  `Sort` int(11) DEFAULT NULL,
  `Content` text NOT NULL,
  `categoryId` int(11) DEFAULT NULL,
  PRIMARY KEY (`articleId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `blog_article`
--

INSERT INTO `blog_article` (`articleId`, `Title`, `Description`, `Image`, `Hits`, `createAt`, `updateAt`, `Status`, `Sort`, `Content`, `categoryId`) VALUES
(2, 'five', '反复呢老夫客服', 'http://localhost/blog/upload/2020-07-02/5efcc639cab1d.jpg', 1, 1593624136, 0, 1, 1, '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `blog_category`
--

CREATE TABLE IF NOT EXISTS `blog_category` (
  `categoryId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `isNav` tinyint(1) DEFAULT NULL,
  `total` int(11) DEFAULT '0',
  `sort` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `blog_category`
--

INSERT INTO `blog_category` (`categoryId`, `name`, `isNav`, `total`, `sort`) VALUES
(1, 'aaa', 1, 2, 0),
(2, 'mei', 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `blog_comment`
--

CREATE TABLE IF NOT EXISTS `blog_comment` (
  `commentId` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) NOT NULL,
  `createAt` int(11) NOT NULL,
  `createIp` varchar(15) NOT NULL,
  `content` text NOT NULL,
  `articleId` int(11) DEFAULT NULL,
  PRIMARY KEY (`commentId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `blog_comment`
--

INSERT INTO `blog_comment` (`commentId`, `nickname`, `createAt`, `createIp`, `content`, `articleId`) VALUES
(3, '打卡机都不卡', 1593624331, '0.0.0.0', '暗地里前往加拿大抛弃我', 2),
(2, '武林风', 1593624212, '0.0.0.0', '六年金饭碗', 2);

-- --------------------------------------------------------

--
-- 表的结构 `blog_link`
--

CREATE TABLE IF NOT EXISTS `blog_link` (
  `linkId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `link` varchar(100) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`linkId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `blog_link`
--

INSERT INTO `blog_link` (`linkId`, `name`, `link`, `status`, `sort`) VALUES
(1, 'bilibili', 'http://bilibili.com', 1, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
