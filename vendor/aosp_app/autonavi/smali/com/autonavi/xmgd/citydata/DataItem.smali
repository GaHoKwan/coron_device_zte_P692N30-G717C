.class public Lcom/autonavi/xmgd/citydata/DataItem;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x72c9767931028440L


# instance fields
.field public children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/citydata/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public isDownloaded:Z

.field public isDownloading:Z

.field public isRemoving:Z

.field public isRequired:Z

.field public isSelected:Z

.field public isUpdate:Z

.field public name:Ljava/lang/String;

.field public sourceUrl:Ljava/lang/String;

.field public supposeSize:J

.field public unzipSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/autonavi/xmgd/citydata/DataItem;
    .locals 5

    const/4 v0, 0x0

    new-instance v2, Lcom/autonavi/xmgd/citydata/DataItem;

    invoke-direct {v2}, Lcom/autonavi/xmgd/citydata/DataItem;-><init>()V

    iget v1, p0, Lcom/autonavi/xmgd/citydata/DataItem;->id:I

    iput v1, v2, Lcom/autonavi/xmgd/citydata/DataItem;->id:I

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataItem;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/autonavi/xmgd/citydata/DataItem;->name:Ljava/lang/String;

    :cond_0
    iget-wide v3, p0, Lcom/autonavi/xmgd/citydata/DataItem;->supposeSize:J

    iput-wide v3, v2, Lcom/autonavi/xmgd/citydata/DataItem;->supposeSize:J

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataItem;->sourceUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataItem;->sourceUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/autonavi/xmgd/citydata/DataItem;->sourceUrl:Ljava/lang/String;

    :cond_1
    iget-boolean v1, p0, Lcom/autonavi/xmgd/citydata/DataItem;->isRequired:Z

    iput-boolean v1, v2, Lcom/autonavi/xmgd/citydata/DataItem;->isRequired:Z

    iget-boolean v1, p0, Lcom/autonavi/xmgd/citydata/DataItem;->isDownloading:Z

    iput-boolean v1, v2, Lcom/autonavi/xmgd/citydata/DataItem;->isDownloading:Z

    iget-boolean v1, p0, Lcom/autonavi/xmgd/citydata/DataItem;->isDownloaded:Z

    iput-boolean v1, v2, Lcom/autonavi/xmgd/citydata/DataItem;->isDownloaded:Z

    iget-boolean v1, p0, Lcom/autonavi/xmgd/citydata/DataItem;->isRemoving:Z

    iput-boolean v1, v2, Lcom/autonavi/xmgd/citydata/DataItem;->isRemoving:Z

    iget-boolean v1, p0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    iput-boolean v1, v2, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    iget-boolean v1, p0, Lcom/autonavi/xmgd/citydata/DataItem;->isUpdate:Z

    iput-boolean v1, v2, Lcom/autonavi/xmgd/citydata/DataItem;->isUpdate:Z

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v2, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    iget-object v4, v2, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataItem;->clone()Lcom/autonavi/xmgd/citydata/DataItem;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, v2, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    :cond_3
    return-object v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataItem;->clone()Lcom/autonavi/xmgd/citydata/DataItem;

    move-result-object v0

    return-object v0
.end method
