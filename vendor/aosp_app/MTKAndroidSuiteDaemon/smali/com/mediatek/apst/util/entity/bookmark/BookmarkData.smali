.class public Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;
.super Ljava/lang/Object;
.source "BookmarkData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private access:J

.field private bookmark:I

.field private created:J

.field private date:J

.field private description:Ljava/lang/String;

.field private favicon:[B

.field private folderid:I

.field private id:I

.field private modified:J

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private visits:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;I[BI)V
    .locals 1
    .parameter "id"
    .parameter "title"
    .parameter "url"
    .parameter "visits"
    .parameter "date"
    .parameter "created"
    .parameter "modefied"
    .parameter "access"
    .parameter "description"
    .parameter "bookmark"
    .parameter "favicon"
    .parameter "folderid"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->id:I

    .line 80
    iput-object p2, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->title:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->url:Ljava/lang/String;

    .line 82
    iput p4, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->visits:I

    .line 83
    iput-wide p5, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->date:J

    .line 84
    iput-wide p7, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->created:J

    .line 85
    iput-wide p9, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->modified:J

    .line 86
    iput-wide p11, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->access:J

    .line 87
    iput-object p13, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->description:Ljava/lang/String;

    .line 88
    iput p14, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->bookmark:I

    .line 89
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->favicon:[B

    .line 90
    move/from16 v0, p16

    iput v0, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->folderid:I

    .line 91
    return-void
.end method


# virtual methods
.method public getAccess()J
    .locals 2

    .prologue
    .line 173
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->access:J

    return-wide v0
.end method

.method public getBookmark()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->bookmark:I

    return v0
.end method

.method public getCreated()J
    .locals 2

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->created:J

    return-wide v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->date:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFavIcon()[B
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->favicon:[B

    return-object v0
.end method

.method public getFolderId()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->folderid:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->id:I

    return v0
.end method

.method public getModified()J
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->modified:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVisits()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->visits:I

    return v0
.end method

.method public setAccess(J)V
    .locals 0
    .parameter "access"

    .prologue
    .line 124
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->access:J

    .line 125
    return-void
.end method

.method public setBookmark(I)V
    .locals 0
    .parameter "bookmark"

    .prologue
    .line 132
    iput p1, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->bookmark:I

    .line 133
    return-void
.end method

.method public setCreated(J)V
    .locals 0
    .parameter "created"

    .prologue
    .line 116
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->created:J

    .line 117
    return-void
.end method

.method public setDate(J)V
    .locals 0
    .parameter "date"

    .prologue
    .line 112
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->date:J

    .line 113
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->description:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setFavicon([B)V
    .locals 0
    .parameter "favicon"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->favicon:[B

    .line 137
    return-void
.end method

.method public setFolderId(I)V
    .locals 0
    .parameter "folderid"

    .prologue
    .line 140
    iput p1, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->folderid:I

    .line 141
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 96
    iput p1, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->id:I

    .line 97
    return-void
.end method

.method public setModified(J)V
    .locals 0
    .parameter "modified"

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->modified:J

    .line 121
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->title:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->url:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setVisits(I)V
    .locals 0
    .parameter "visits"

    .prologue
    .line 108
    iput p1, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->visits:I

    .line 109
    return-void
.end method
