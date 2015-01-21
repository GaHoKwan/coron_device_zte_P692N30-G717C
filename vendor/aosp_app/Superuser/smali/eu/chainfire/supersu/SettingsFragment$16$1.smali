.class Leu/chainfire/supersu/SettingsFragment$16$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic ˮ͈:[Z

.field private final synthetic 櫯:Landroid/widget/ScrollView;

.field final synthetic 鷭:Leu/chainfire/supersu/SettingsFragment$16;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/SettingsFragment$16;Landroid/widget/ScrollView;[Z)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/SettingsFragment$16$1;->鷭:Leu/chainfire/supersu/SettingsFragment$16;

    iput-object p2, p0, Leu/chainfire/supersu/SettingsFragment$16$1;->櫯:Landroid/widget/ScrollView;

    iput-object p3, p0, Leu/chainfire/supersu/SettingsFragment$16$1;->ˮ͈:[Z

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$16$1;->櫯:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 741
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$16$1;->櫯:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 742
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$16$1;->ˮ͈:[Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    .line 743
    const/4 v0, 0x0

    return v0
.end method
