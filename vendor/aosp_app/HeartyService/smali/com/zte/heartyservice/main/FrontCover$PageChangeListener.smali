.class Lcom/zte/heartyservice/main/FrontCover$PageChangeListener;
.super Ljava/lang/Object;
.source "FrontCover.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/main/FrontCover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/FrontCover;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/main/FrontCover;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/zte/heartyservice/main/FrontCover$PageChangeListener;->this$0:Lcom/zte/heartyservice/main/FrontCover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/main/FrontCover;Lcom/zte/heartyservice/main/FrontCover$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/main/FrontCover$PageChangeListener;-><init>(Lcom/zte/heartyservice/main/FrontCover;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 174
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 164
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 167
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/zte/heartyservice/main/FrontCover$PageChangeListener;->this$0:Lcom/zte/heartyservice/main/FrontCover;

    invoke-virtual {v0}, Lcom/zte/heartyservice/main/FrontCover;->startHeartyService()V

    .line 171
    :cond_0
    return-void
.end method
