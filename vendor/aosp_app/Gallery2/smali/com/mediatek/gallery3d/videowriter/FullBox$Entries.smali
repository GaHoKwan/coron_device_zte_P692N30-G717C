.class Lcom/mediatek/gallery3d/videowriter/FullBox$Entries;
.super Ljava/lang/Object;
.source "FullBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/videowriter/FullBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entries"
.end annotation


# instance fields
.field private mdata:[I

.field final synthetic this$0:Lcom/mediatek/gallery3d/videowriter/FullBox;


# direct methods
.method public varargs constructor <init>(Lcom/mediatek/gallery3d/videowriter/FullBox;[I)V
    .locals 0
    .parameter
    .parameter "data"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/mediatek/gallery3d/videowriter/FullBox$Entries;->this$0:Lcom/mediatek/gallery3d/videowriter/FullBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p2, p0, Lcom/mediatek/gallery3d/videowriter/FullBox$Entries;->mdata:[I

    .line 183
    return-void
.end method


# virtual methods
.method public write()V
    .locals 4

    .prologue
    .line 185
    iget-object v0, p0, Lcom/mediatek/gallery3d/videowriter/FullBox$Entries;->mdata:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 186
    .local v1, data:I
    invoke-static {v1}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    .end local v1           #data:I
    :cond_0
    return-void
.end method
