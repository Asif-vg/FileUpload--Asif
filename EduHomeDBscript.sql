USE [EduHomeDB]
GO
SET IDENTITY_INSERT [dbo].[Tags] ON 

INSERT [dbo].[Tags] ([Id], [Name]) VALUES (1, N'Course')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (2, N'Education')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (3, N'Teachers')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (4, N'Learning')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (5, N'University')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (6, N'Events')
SET IDENTITY_INSERT [dbo].[Tags] OFF
GO
SET IDENTITY_INSERT [dbo].[BlogCategorys] ON 

INSERT [dbo].[BlogCategorys] ([Id], [Name]) VALUES (1, N'CSS Engineering (10)')
INSERT [dbo].[BlogCategorys] ([Id], [Name]) VALUES (2, N'Political Science (12)')
INSERT [dbo].[BlogCategorys] ([Id], [Name]) VALUES (3, N'Micro Biology (08)')
INSERT [dbo].[BlogCategorys] ([Id], [Name]) VALUES (4, N'HTML5 & CSS3 (15)')
INSERT [dbo].[BlogCategorys] ([Id], [Name]) VALUES (5, N'Web Design (20)')
INSERT [dbo].[BlogCategorys] ([Id], [Name]) VALUES (6, N'PHP (23)')
SET IDENTITY_INSERT [dbo].[BlogCategorys] OFF
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([Id], [Title], [Content], [BlogImage], [CreatedDate], [CategoryId]) VALUES (1, N'I MUST EXPLAIN TO YOU HOW ALL THIS A MISTAKEN IDEA', N'I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human haness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque sa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam volutatem quia voluptas sit asnatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui

I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human haness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam

I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human haness pcias unde omnis iste natus error sit voluptatem accusantium doloremque la udantium, totam rem aperiam

I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human haness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque sa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo emo enim ipsam', N'blog-detail.jpg', CAST(N'2017-07-20T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Blogs] ([Id], [Title], [Content], [BlogImage], [CreatedDate], [CategoryId]) VALUES (2, N'I MUST EXPLAIN TO YOU HOW ALL THIS A MISTAKEN IDEA', N'I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human haness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque sa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam volutatem quia voluptas sit asnatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui

I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human haness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam

I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human haness pcias unde omnis iste natus error sit voluptatem accusantium doloremque la udantium, totam rem aperiam', N'blog4.jpg', CAST(N'2020-09-18T00:00:00.0000000' AS DateTime2), 2)
INSERT [dbo].[Blogs] ([Id], [Title], [Content], [BlogImage], [CreatedDate], [CategoryId]) VALUES (4, N'I MUST EXPLAIN TO YOU HOW ALL THIS A MISTAKEN IDEA', N'I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human haness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque sa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam volutatem quia voluptas sit asnatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui

I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human haness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam', N'blog3.jpg', CAST(N'2021-08-08T00:00:00.0000000' AS DateTime2), 3)
INSERT [dbo].[Blogs] ([Id], [Title], [Content], [BlogImage], [CreatedDate], [CategoryId]) VALUES (6, N'lorem ipsum blog9', N'dafsadasgasdgasgasgasga', N'f71c8a49-9345-4c28-921d-0e130cb14eac-20211214093223Microsoft.AspNetCore.Http.FormFile', CAST(N'2021-12-14T09:32:23.3316921' AS DateTime2), 3)
INSERT [dbo].[Blogs] ([Id], [Title], [Content], [BlogImage], [CreatedDate], [CategoryId]) VALUES (7, N'lorem ipsum blog2', N'qerreqwfwafaWEFWQQ', N'f25912de-3035-43d1-8859-b0084e40503f-20211214103842-Microsoft.AspNetCore.Http.FormFile', CAST(N'2021-12-14T10:38:43.8478906' AS DateTime2), 2)
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[BlogTags] ON 

INSERT [dbo].[BlogTags] ([Id], [Name]) VALUES (1, N'
Course')
INSERT [dbo].[BlogTags] ([Id], [Name]) VALUES (2, N'Education')
INSERT [dbo].[BlogTags] ([Id], [Name]) VALUES (3, N'Teachers')
INSERT [dbo].[BlogTags] ([Id], [Name]) VALUES (4, N'Learning')
INSERT [dbo].[BlogTags] ([Id], [Name]) VALUES (5, N'University')
INSERT [dbo].[BlogTags] ([Id], [Name]) VALUES (6, N'Events')
SET IDENTITY_INSERT [dbo].[BlogTags] OFF
GO
SET IDENTITY_INSERT [dbo].[TagToBlogs] ON 

INSERT [dbo].[TagToBlogs] ([Id], [BlogId], [TagId]) VALUES (1, 1, 2)
INSERT [dbo].[TagToBlogs] ([Id], [BlogId], [TagId]) VALUES (2, 2, 4)
INSERT [dbo].[TagToBlogs] ([Id], [BlogId], [TagId]) VALUES (3, 2, 6)
INSERT [dbo].[TagToBlogs] ([Id], [BlogId], [TagId]) VALUES (4, 4, 1)
INSERT [dbo].[TagToBlogs] ([Id], [BlogId], [TagId]) VALUES (5, 1, 5)
INSERT [dbo].[TagToBlogs] ([Id], [BlogId], [TagId]) VALUES (6, 4, 3)
INSERT [dbo].[TagToBlogs] ([Id], [BlogId], [TagId]) VALUES (7, 7, 1)
INSERT [dbo].[TagToBlogs] ([Id], [BlogId], [TagId]) VALUES (8, 7, 2)
INSERT [dbo].[TagToBlogs] ([Id], [BlogId], [TagId]) VALUES (9, 7, 3)
SET IDENTITY_INSERT [dbo].[TagToBlogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Banners] ON 

INSERT [dbo].[Banners] ([Id], [Title], [Page]) VALUES (1, N'ABOUT US', N'about')
INSERT [dbo].[Banners] ([Id], [Title], [Page]) VALUES (2, N'COURSES
', N'course')
INSERT [dbo].[Banners] ([Id], [Title], [Page]) VALUES (3, N'EVENT', N'event')
INSERT [dbo].[Banners] ([Id], [Title], [Page]) VALUES (4, N'OUR TEACHERS', N'teacher')
INSERT [dbo].[Banners] ([Id], [Title], [Page]) VALUES (5, N'BLOG', N'blog')
INSERT [dbo].[Banners] ([Id], [Title], [Page]) VALUES (6, N'CONTACT', N'contact')
INSERT [dbo].[Banners] ([Id], [Title], [Page]) VALUES (8, N'Detail', N'detail')
SET IDENTITY_INSERT [dbo].[Banners] OFF
GO
SET IDENTITY_INSERT [dbo].[Settings] ON 

INSERT [dbo].[Settings] ([Id], [Address], [Phone1], [Phone2], [Email], [Website], [Logo]) VALUES (1, N'Your address goes here, Street
City, Roadno 785 New York', N'+880 548 986 898 87', N'+880 659 785 658 98', N'info@eduhome.com', N'www.eduhome.com', N'logo.png')
SET IDENTITY_INSERT [dbo].[Settings] OFF
GO
