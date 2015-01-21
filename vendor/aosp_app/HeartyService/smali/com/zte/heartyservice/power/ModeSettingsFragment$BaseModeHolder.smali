.class public Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;
.super Ljava/lang/Object;
.source "ModeSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/power/ModeSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BaseModeHolder"
.end annotation


# instance fields
.field private checkArea:Landroid/view/View;

.field private radioButton:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/power/ModeSettingsFragment;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter "view"

    .prologue
    .line 548
    iput-object p1, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    const v0, 0x7f0e0059

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;->title:Landroid/widget/TextView;

    .line 551
    const v0, 0x7f0e005b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;->radioButton:Landroid/widget/ImageView;

    .line 552
    const v0, 0x7f0e005a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;->checkArea:Landroid/view/View;

    .line 553
    return-void
.end method

.method static synthetic access$1100(Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;->checkArea:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;->radioButton:Landroid/widget/ImageView;

    return-object v0
.end method
