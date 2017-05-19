ALTER TABLE [dbo].[City]
ADD CONSTRAINT PK_City PRIMARY KEY (Id)

ALTER TABLE [dbo].[Event]
ADD CONSTRAINT PK_Event PRIMARY KEY (Id)

ALTER TABLE [dbo].[Level]
ADD CONSTRAINT PK_Level PRIMARY KEY (Id)

ALTER TABLE [dbo].[Person]
ADD CONSTRAINT PK_Person PRIMARY KEY (Id)

ALTER TABLE [dbo].[Presentation]
ADD CONSTRAINT PK_Persentation PRIMARY KEY (Id)

ALTER TABLE [dbo].[PresentationTrack]
ADD CONSTRAINT PK_PresentationTrack PRIMARY KEY (Id)

ALTER TABLE [dbo].[Region]
ADD CONSTRAINT PK_Region PRIMARY KEY (Id)

ALTER TABLE [dbo].[Role]
ADD CONSTRAINT PK_Role PRIMARY KEY (Id)

ALTER TABLE [dbo].[Speaker]
ADD CONSTRAINT PK_Speaker PRIMARY KEY (Id)

ALTER TABLE [dbo].[Sponsor]
ADD CONSTRAINT PK_Sponsor PRIMARY KEY (Id)

ALTER TABLE [dbo].[SponsorLevel]
ADD CONSTRAINT PK_SponsorLevel PRIMARY KEY (Id)

ALTER TABLE [dbo].[Track]
ADD CONSTRAINT PK_Track PRIMARY KEY (Id)


ALTER TABLE [dbo].[Presentation]   
ADD  CONSTRAINT [FK_Presentation_Event] FOREIGN KEY([EventId])
REFERENCES [dbo].[Event] ([Id])

ALTER TABLE [dbo].[Presentation]   
ADD  CONSTRAINT [FK_Presentation_Level] FOREIGN KEY([LevelId])
REFERENCES [dbo].[Level] ([Id])


ALTER TABLE [dbo].[Presentation]   
ADD  CONSTRAINT [FK_Presentation_Speaker] FOREIGN KEY([SpeakerId])
REFERENCES [dbo].[Speaker] ([Id])

ALTER TABLE [dbo].[PresentationTrack]   
ADD  CONSTRAINT [FK_PresentationTrack_Presentation] FOREIGN KEY([PresentationId])
REFERENCES [dbo].[Presentation] ([Id])

ALTER TABLE [dbo].[PresentationTrack]   
ADD  CONSTRAINT [FK_PresentationTrack_Track] FOREIGN KEY([TrackId])
REFERENCES [dbo].[Track] ([Id])

ALTER TABLE [dbo].[Event]   
ADD  CONSTRAINT [FK_Event_City] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([Id])

ALTER TABLE [dbo].[Event]   
ADD  CONSTRAINT [FK_Event_Region] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Region] ([Id])

ALTER TABLE [dbo].[Person]   
ADD  CONSTRAINT [FK_Person_City] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([Id])

ALTER TABLE [dbo].[Sponsor]   
ADD  CONSTRAINT [FK_Sponsor_SponsorLevel] FOREIGN KEY([SponsorLevelId])
REFERENCES [dbo].[SponsorLevel] ([Id])
