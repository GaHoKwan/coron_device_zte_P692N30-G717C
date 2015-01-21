.class public Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;
.super Ljava/lang/Object;
.source "BookmarkFolder.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private date:J

.field private folderlevel:I

.field private id:I

.field private name:Ljava/lang/String;

.field private parentid:I

.field private visits:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;JI)V
    .locals 0
    .parameter "id"
    .parameter "parentid"
    .parameter "folderlevel"
    .parameter "name"
    .parameter "date"
    .parameter "visits"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->id:I

    .line 74
    iput p2, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->parentid:I

    .line 75
    iput p3, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->folderlevel:I

    .line 76
    iput-object p4, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->name:Ljava/lang/String;

    .line 77
    iput-wide p5, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->date:J

    .line 78
    iput p7, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->visits:I

    .line 79
    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->date:J

    return-wide v0
.end method

.method public getFolderLevel()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->folderlevel:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->parentid:I

    return v0
.end method

.method public getVisits()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->visits:I

    return v0
.end method

.method public setDate(J)V
    .locals 0
    .parameter "date"

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->date:J

    .line 100
    return-void
.end method

.method public setFolderLevel(I)V
    .locals 0
    .parameter "folderlevel"

    .prologue
    .line 91
    iput p1, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->folderlevel:I

    .line 92
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 83
    iput p1, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->id:I

    .line 84
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->name:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setParentId(I)V
    .locals 0
    .parameter "parentid"

    .prologue
    .line 87
    iput p1, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->parentid:I

    .line 88
    return-void
.end method

.method public setVisits(I)V
    .locals 0
    .parameter "visits"

    .prologue
    .line 103
    iput p1, p0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->visits:I

    .line 104
    return-void
.end method
