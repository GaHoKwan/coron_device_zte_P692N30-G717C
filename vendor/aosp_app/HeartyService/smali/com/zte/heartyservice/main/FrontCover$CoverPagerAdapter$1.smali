.class Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter$1;
.super Ljava/lang/Object;
.source "FrontCover.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter;-><init>(Lcom/zte/heartyservice/main/FrontCover;Landroid/support/v4/view/ViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter;

.field final synthetic val$btn:Landroid/widget/Button;

.field final synthetic val$this$0:Lcom/zte/heartyservice/main/FrontCover;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter;Lcom/zte/heartyservice/main/FrontCover;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter$1;->this$1:Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter;

    iput-object p2, p0, Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter$1;->val$this$0:Lcom/zte/heartyservice/main/FrontCover;

    iput-object p3, p0, Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter$1;->val$btn:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter$1;->val$btn:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 213
    return-void
.end method
