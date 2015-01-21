.class Leu/chainfire/supersu/SettingsFragment$16$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private Ą:J

.field private final synthetic ą:Landroid/widget/ScrollView;

.field private final synthetic Ć:Landroid/widget/TextView;

.field private final synthetic ć:Landroid/app/AlertDialog;

.field private ȃ:I

.field private final ˮ͈:J

.field private final synthetic ˮ͍:[Z

.field private final 櫯:J

.field final synthetic 鷭:Leu/chainfire/supersu/SettingsFragment$16;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/SettingsFragment$16;Landroid/widget/ScrollView;Landroid/widget/TextView;Landroid/app/AlertDialog;[Z)V
    .locals 2

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->鷭:Leu/chainfire/supersu/SettingsFragment$16;

    iput-object p2, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->ą:Landroid/widget/ScrollView;

    iput-object p3, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->Ć:Landroid/widget/TextView;

    iput-object p4, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->ć:Landroid/app/AlertDialog;

    iput-object p5, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->ˮ͍:[Z

    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 756
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->櫯:J

    .line 757
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->ˮ͈:J

    .line 759
    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->ȃ:I

    .line 760
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->Ą:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->ą:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    .line 765
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->Ć:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    .line 766
    sub-int v6, v5, v4

    .line 767
    if-gez v6, :cond_0

    const/4 v6, 0x0

    .line 768
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->Ą:J

    sub-long v7, v0, v2

    .line 770
    iget-wide v0, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->Ą:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-lez v0, :cond_4

    if-lez v4, :cond_4

    if-lez v5, :cond_4

    if-lez v6, :cond_4

    .line 771
    iget v0, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->ȃ:I

    if-nez v0, :cond_2

    .line 772
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->ą:Landroid/widget/ScrollView;

    int-to-float v1, v6

    long-to-float v2, v7

    const v3, 0x466a6000

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setScrollY(I)V

    .line 773
    const-wide/16 v0, 0x3a98

    cmp-long v0, v7, v0

    if-ltz v0, :cond_5

    .line 774
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->Ą:J

    .line 775
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 776
    const/4 v0, 0x1

    iput v0, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->ȃ:I

    .line 777
    goto/16 :goto_0

    .line 778
    :cond_1
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->ą:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setScrollY(I)V

    .line 781
    goto/16 :goto_0

    :cond_2
    iget v0, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->ȃ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 782
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->Ć:Landroid/widget/TextView;

    long-to-float v1, v7

    const/high16 v2, 0x43fa

    div-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 783
    const-wide/16 v0, 0x1f4

    cmp-long v0, v7, v0

    if-ltz v0, :cond_5

    .line 784
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->Ą:J

    .line 785
    const/4 v0, 0x2

    iput v0, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->ȃ:I

    .line 786
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->ą:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setScrollY(I)V

    .line 788
    goto :goto_0

    :cond_3
    iget v0, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->ȃ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 789
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->Ć:Landroid/widget/TextView;

    long-to-float v1, v7

    const/high16 v2, 0x43fa

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 790
    const-wide/16 v0, 0x1f4

    cmp-long v0, v7, v0

    if-ltz v0, :cond_5

    .line 791
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->Ą:J

    .line 792
    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->ȃ:I

    .line 795
    goto :goto_0

    .line 796
    :cond_4
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->ą:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->ą:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setScrollY(I)V

    .line 799
    :cond_5
    :goto_0
    iget-wide v0, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->Ą:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->Ą:J

    .line 801
    :cond_6
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->ć:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->ˮ͍:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_7

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$16$2;->鷭:Leu/chainfire/supersu/SettingsFragment$16;

    invoke-static {v0}, Leu/chainfire/supersu/SettingsFragment$16;->鷭(Leu/chainfire/supersu/SettingsFragment$16;)Leu/chainfire/supersu/SettingsFragment;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/SettingsFragment;->ˮ͈(Leu/chainfire/supersu/SettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x11

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 802
    :cond_7
    return-void
.end method
