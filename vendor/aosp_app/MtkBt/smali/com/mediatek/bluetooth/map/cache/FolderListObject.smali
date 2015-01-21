.class public Lcom/mediatek/bluetooth/map/cache/FolderListObject;
.super Ljava/lang/Object;
.source "FolderListObject.java"


# instance fields
.field private mName:Ljava/lang/String;

.field private mSize:I

.field private mTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/mediatek/bluetooth/map/util/UtcUtil;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/cache/FolderListObject;->mTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/cache/FolderListObject;->mName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 50
    iput p1, p0, Lcom/mediatek/bluetooth/map/cache/FolderListObject;->mSize:I

    .line 51
    return-void
.end method
