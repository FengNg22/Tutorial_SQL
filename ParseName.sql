Create Table WebsiteLog
(
        HitDate DateTime,
        IPAddress varchar(15),
        RequestedPage varchar(200)
)
GO

INSERT INTO WebsiteLog (HitDate, IPAddress, RequestedPage)
VALUES ('2003-11-10 11:00:00.000', '127.0.0.1', 'Default.aspx')

INSERT INTO WebsiteLog (HitDate, IPAddress, RequestedPage)
VALUES ('2003-11-10 11:05:00.000', '192.168.0.140', 'About.aspx')

INSERT INTO WebsiteLog (HitDate, IPAddress, RequestedPage)
VALUES ('2003-11-10 11:06:00.000', '192.168.0.145', 'News.aspx')

SELECT *
FROM WebsiteLog

SELECT
        PARSENAME(IPAddress, 4) as Part1,
        PARSENAME(IPAddress, 3) as Part2,
        PARSENAME(IPAddress, 2) as Part3
        --Count(*) as CountOfHitsFromSubnet

FROM
        WebsiteLog
--GROUP BY
--        PARSENAME(IPAddress, 4),
--        PARSENAME(IPAddress, 3),
--        PARSENAME(IPAddress, 2)