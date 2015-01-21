.class Lcom/mediatek/filemanager/FileInfoAdapter$FileViewHolder;
.super Ljava/lang/Object;
.source "FileInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/filemanager/FileInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileViewHolder"
.end annotation


# instance fields
.field protected mIcon:Landroid/widget/ImageView;

.field protected mName:Landroid/widget/TextView;

.field protected mSize:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0
    .parameter "name"
    .parameter "size"
    .parameter "icon"

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput-object p1, p0, Lcom/mediatek/filemanager/FileInfoAdapter$FileViewHolder;->mName:Landroid/widget/TextView;

    .line 380
    iput-object p2, p0, Lcom/mediatek/filemanager/FileInfoAdapter$FileViewHolder;->mSize:Landroid/widget/TextView;

    .line 381
    iput-object p3, p0, Lcom/mediatek/filemanager/FileInfoAdapter$FileViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 382
    return-void
.end method
