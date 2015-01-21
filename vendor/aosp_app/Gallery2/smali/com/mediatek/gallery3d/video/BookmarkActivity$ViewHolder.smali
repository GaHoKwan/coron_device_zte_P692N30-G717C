.class Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;
.super Ljava/lang/Object;
.source "BookmarkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/video/BookmarkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field mData:Ljava/lang/String;

.field mDataView:Landroid/widget/TextView;

.field mId:J

.field mMimetype:Ljava/lang/String;

.field mTitle:Ljava/lang/String;

.field mTitleView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/mediatek/gallery3d/video/BookmarkActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/gallery3d/video/BookmarkActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;->this$0:Lcom/mediatek/gallery3d/video/BookmarkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/gallery3d/video/BookmarkActivity;Lcom/mediatek/gallery3d/video/BookmarkActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;-><init>(Lcom/mediatek/gallery3d/video/BookmarkActivity;)V

    return-void
.end method
