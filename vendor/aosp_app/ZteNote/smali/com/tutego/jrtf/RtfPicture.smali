.class public Lcom/tutego/jrtf/RtfPicture;
.super Ljava/lang/Object;
.source "RtfPicture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tutego/jrtf/RtfPicture$PictureType;
    }
.end annotation


# instance fields
.field private heightInTwips:I

.field private final hexPicData:Ljava/lang/StringBuilder;

.field private scaleX:I

.field private scaleY:I

.field private widthInTwips:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 7
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x1000

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v4, p0, Lcom/tutego/jrtf/RtfPicture;->hexPicData:Ljava/lang/StringBuilder;

    .line 60
    iput v6, p0, Lcom/tutego/jrtf/RtfPicture;->widthInTwips:I

    iput v6, p0, Lcom/tutego/jrtf/RtfPicture;->heightInTwips:I

    .line 61
    iput v6, p0, Lcom/tutego/jrtf/RtfPicture;->scaleX:I

    iput v6, p0, Lcom/tutego/jrtf/RtfPicture;->scaleY:I

    .line 98
    if-nez p1, :cond_0

    .line 99
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Image source can\'t be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 104
    :cond_0
    const/4 v2, 0x1

    .line 105
    .local v2, pos:I
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, b:I
    if-ne v0, v6, :cond_1

    .line 119
    return-void

    .line 107
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, hexString:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 109
    iget-object v4, p0, Lcom/tutego/jrtf/RtfPicture;->hexPicData:Ljava/lang/StringBuilder;

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :goto_1
    add-int/lit8 v3, v2, 0x1

    .end local v2           #pos:I
    .local v3, pos:I
    const/16 v4, 0x28

    if-ne v2, v4, :cond_3

    .line 115
    const/4 v2, 0x1

    .line 116
    .end local v3           #pos:I
    .restart local v2       #pos:I
    iget-object v4, p0, Lcom/tutego/jrtf/RtfPicture;->hexPicData:Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 111
    :cond_2
    iget-object v4, p0, Lcom/tutego/jrtf/RtfPicture;->hexPicData:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v2           #pos:I
    .restart local v3       #pos:I
    :cond_3
    move v2, v3

    .end local v3           #pos:I
    .restart local v2       #pos:I
    goto :goto_0
.end method

.method static synthetic access$0(Lcom/tutego/jrtf/RtfPicture;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tutego/jrtf/RtfPicture;->hexPicData:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tutego/jrtf/RtfPicture;)I
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p0, Lcom/tutego/jrtf/RtfPicture;->widthInTwips:I

    return v0
.end method

.method static synthetic access$2(Lcom/tutego/jrtf/RtfPicture;)I
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p0, Lcom/tutego/jrtf/RtfPicture;->heightInTwips:I

    return v0
.end method

.method static synthetic access$3(Lcom/tutego/jrtf/RtfPicture;)I
    .locals 1
    .parameter

    .prologue
    .line 61
    iget v0, p0, Lcom/tutego/jrtf/RtfPicture;->scaleX:I

    return v0
.end method

.method static synthetic access$4(Lcom/tutego/jrtf/RtfPicture;)I
    .locals 1
    .parameter

    .prologue
    .line 61
    iget v0, p0, Lcom/tutego/jrtf/RtfPicture;->scaleY:I

    return v0
.end method


# virtual methods
.method public height(DLcom/tutego/jrtf/RtfUnit;)Lcom/tutego/jrtf/RtfPicture;
    .locals 1
    .parameter "height"
    .parameter "unit"

    .prologue
    .line 141
    invoke-virtual {p3, p1, p2}, Lcom/tutego/jrtf/RtfUnit;->toTwips(D)I

    move-result v0

    iput v0, p0, Lcom/tutego/jrtf/RtfPicture;->heightInTwips:I

    .line 142
    return-object p0
.end method

.method public scale(II)Lcom/tutego/jrtf/RtfPicture;
    .locals 0
    .parameter "scaleX"
    .parameter "scaleY"

    .prologue
    .line 189
    iput p1, p0, Lcom/tutego/jrtf/RtfPicture;->scaleX:I

    .line 190
    iput p2, p0, Lcom/tutego/jrtf/RtfPicture;->scaleY:I

    .line 191
    return-object p0
.end method

.method public scaleX(I)Lcom/tutego/jrtf/RtfPicture;
    .locals 0
    .parameter "scale"

    .prologue
    .line 166
    iput p1, p0, Lcom/tutego/jrtf/RtfPicture;->scaleX:I

    .line 167
    return-object p0
.end method

.method public scaleY(I)Lcom/tutego/jrtf/RtfPicture;
    .locals 0
    .parameter "scale"

    .prologue
    .line 177
    iput p1, p0, Lcom/tutego/jrtf/RtfPicture;->scaleY:I

    .line 178
    return-object p0
.end method

.method public size(DDLcom/tutego/jrtf/RtfUnit;)Lcom/tutego/jrtf/RtfPicture;
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "unit"

    .prologue
    .line 154
    invoke-virtual {p5, p1, p2}, Lcom/tutego/jrtf/RtfUnit;->toTwips(D)I

    move-result v0

    iput v0, p0, Lcom/tutego/jrtf/RtfPicture;->widthInTwips:I

    .line 155
    invoke-virtual {p5, p3, p4}, Lcom/tutego/jrtf/RtfUnit;->toTwips(D)I

    move-result v0

    iput v0, p0, Lcom/tutego/jrtf/RtfPicture;->heightInTwips:I

    .line 156
    return-object p0
.end method

.method public type(Lcom/tutego/jrtf/RtfPicture$PictureType;)Lcom/tutego/jrtf/RtfText;
    .locals 2
    .parameter "pictureType"

    .prologue
    .line 201
    new-instance v0, Lcom/tutego/jrtf/RtfPicture$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/tutego/jrtf/RtfPicture$1;-><init>(Lcom/tutego/jrtf/RtfPicture;Ljava/lang/CharSequence;Lcom/tutego/jrtf/RtfPicture$PictureType;)V

    return-object v0
.end method

.method public width(DLcom/tutego/jrtf/RtfUnit;)Lcom/tutego/jrtf/RtfPicture;
    .locals 1
    .parameter "width"
    .parameter "unit"

    .prologue
    .line 129
    invoke-virtual {p3, p1, p2}, Lcom/tutego/jrtf/RtfUnit;->toTwips(D)I

    move-result v0

    iput v0, p0, Lcom/tutego/jrtf/RtfPicture;->widthInTwips:I

    .line 130
    return-object p0
.end method
