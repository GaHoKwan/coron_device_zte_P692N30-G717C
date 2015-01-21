.class public Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity$CoverAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "NewNotebookActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CoverAdapter"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;


# direct methods
.method public constructor <init>(Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 135
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity$CoverAdapter;->this$0:Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;

    .line 133
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 134
    iput-object p2, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity$CoverAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 165
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 166
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity$CoverAdapter;->this$0:Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mListViews:Ljava/util/ArrayList;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->access$0(Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 3
    .parameter "container"
    .parameter "position"

    .prologue
    .line 153
    :try_start_0
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity$CoverAdapter;->this$0:Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mListViews:Ljava/util/ArrayList;
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->access$0(Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity$CoverAdapter;->this$0:Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mListViews:Ljava/util/ArrayList;
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->access$0(Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NewNotebookActivity"

    const-string v2, "addView Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity$CoverAdapter;->this$0:Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->finish()V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 146
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
