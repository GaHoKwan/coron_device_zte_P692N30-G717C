.class Lcom/mediatek/gallery3d/video/BookmarkActivity$1;
.super Ljava/lang/Object;
.source "BookmarkActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gallery3d/video/BookmarkActivity;->showEditDialog(Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/video/BookmarkActivity;

.field final synthetic val$dataView:Landroid/widget/EditText;

.field final synthetic val$holder:Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;

.field final synthetic val$titleView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/mediatek/gallery3d/video/BookmarkActivity;Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/BookmarkActivity$1;->this$0:Lcom/mediatek/gallery3d/video/BookmarkActivity;

    iput-object p2, p0, Lcom/mediatek/gallery3d/video/BookmarkActivity$1;->val$holder:Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;

    iput-object p3, p0, Lcom/mediatek/gallery3d/video/BookmarkActivity$1;->val$titleView:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/mediatek/gallery3d/video/BookmarkActivity$1;->val$dataView:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/BookmarkActivity$1;->this$0:Lcom/mediatek/gallery3d/video/BookmarkActivity;

    #getter for: Lcom/mediatek/gallery3d/video/BookmarkActivity;->mBookmark:Lcom/mediatek/gallery3d/video/BookmarkEnhance;
    invoke-static {v0}, Lcom/mediatek/gallery3d/video/BookmarkActivity;->access$100(Lcom/mediatek/gallery3d/video/BookmarkActivity;)Lcom/mediatek/gallery3d/video/BookmarkEnhance;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/video/BookmarkActivity$1;->val$holder:Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;

    iget-wide v1, v1, Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;->mId:J

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/BookmarkActivity$1;->val$titleView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gallery3d/video/BookmarkActivity$1;->val$dataView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/gallery3d/video/BookmarkEnhance;->update(JLjava/lang/String;Ljava/lang/String;I)I

    .line 233
    return-void
.end method
