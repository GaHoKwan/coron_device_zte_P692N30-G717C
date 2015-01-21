.class Lzte/com/cn/cloudnotepad/filer/FilerActivity$2;
.super Ljava/lang/Object;
.source "FilerActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/filer/FilerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/filer/FilerActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/filer/FilerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity$2;->this$0:Lzte/com/cn/cloudnotepad/filer/FilerActivity;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 276
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v1, 0x1

    .line 281
    packed-switch p2, :pswitch_data_0

    .line 296
    :goto_0
    return-void

    .line 283
    :pswitch_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity$2;->this$0:Lzte/com/cn/cloudnotepad/filer/FilerActivity;

    iput-boolean v1, v0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mIsScrolling:Z

    .line 284
    sget-object v0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->INSTANCE:Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->stopLoad()V

    goto :goto_0

    .line 287
    :pswitch_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity$2;->this$0:Lzte/com/cn/cloudnotepad/filer/FilerActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mIsScrolling:Z

    .line 288
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity$2;->this$0:Lzte/com/cn/cloudnotepad/filer/FilerActivity;

    invoke-virtual {v0, p1}, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->updateListIcon(Landroid/widget/AbsListView;)V

    goto :goto_0

    .line 291
    :pswitch_2
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity$2;->this$0:Lzte/com/cn/cloudnotepad/filer/FilerActivity;

    iput-boolean v1, v0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mIsScrolling:Z

    goto :goto_0

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
