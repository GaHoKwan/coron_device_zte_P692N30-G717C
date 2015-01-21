.class Lcom/zte/retrieve/activity/InstructGuideViewActivity$GuidePageChangeListener;
.super Ljava/lang/Object;
.source "InstructGuideViewActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/activity/InstructGuideViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GuidePageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/activity/InstructGuideViewActivity;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/activity/InstructGuideViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity$GuidePageChangeListener;->this$0:Lcom/zte/retrieve/activity/InstructGuideViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 201
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 206
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 211
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity$GuidePageChangeListener;->this$0:Lcom/zte/retrieve/activity/InstructGuideViewActivity;

    #getter for: Lcom/zte/retrieve/activity/InstructGuideViewActivity;->guideViews:[Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->access$1(Lcom/zte/retrieve/activity/InstructGuideViewActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 217
    return-void

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity$GuidePageChangeListener;->this$0:Lcom/zte/retrieve/activity/InstructGuideViewActivity;

    #getter for: Lcom/zte/retrieve/activity/InstructGuideViewActivity;->guideViews:[Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->access$1(Lcom/zte/retrieve/activity/InstructGuideViewActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, p1

    const v2, 0x7f02001f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 213
    if-eq p1, v0, :cond_1

    .line 214
    iget-object v1, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity$GuidePageChangeListener;->this$0:Lcom/zte/retrieve/activity/InstructGuideViewActivity;

    #getter for: Lcom/zte/retrieve/activity/InstructGuideViewActivity;->guideViews:[Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->access$1(Lcom/zte/retrieve/activity/InstructGuideViewActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v0

    const v2, 0x7f02001e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 211
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
