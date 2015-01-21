.class Leu/chainfire/supersu/PromptActivity$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic 鷭:Leu/chainfire/supersu/PromptActivity;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/PromptActivity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/PromptActivity$2;->鷭:Leu/chainfire/supersu/PromptActivity;

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/PromptActivity$2;)Leu/chainfire/supersu/PromptActivity;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$2;->鷭:Leu/chainfire/supersu/PromptActivity;

    return-object v0
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$2;->鷭:Leu/chainfire/supersu/PromptActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Leu/chainfire/supersu/PromptActivity;->鷭(Leu/chainfire/supersu/PromptActivity;Z)V

    .line 460
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$2;->鷭:Leu/chainfire/supersu/PromptActivity;

    iget-object v1, p0, Leu/chainfire/supersu/PromptActivity$2;->鷭:Leu/chainfire/supersu/PromptActivity;

    const v2, 0x7f09000d

    invoke-virtual {v1, v2}, Leu/chainfire/supersu/PromptActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Leu/chainfire/supersu/PromptActivity$2$1;

    invoke-direct {v2, p0}, Leu/chainfire/supersu/PromptActivity$2$1;-><init>(Leu/chainfire/supersu/PromptActivity$2;)V

    .line 465
    new-instance v3, Leu/chainfire/supersu/PromptActivity$2$2;

    invoke-direct {v3, p0}, Leu/chainfire/supersu/PromptActivity$2$2;-><init>(Leu/chainfire/supersu/PromptActivity$2;)V

    .line 460
    invoke-static {v0, v1, v2, v3}, Leu/chainfire/supersu/Constants;->鷭(Landroid/app/Activity;Ljava/lang/String;Leu/chainfire/supersu/Constants$OnExpireTimeSelected;Ljava/lang/Runnable;)V

    .line 471
    const/4 v0, 0x1

    return v0
.end method
