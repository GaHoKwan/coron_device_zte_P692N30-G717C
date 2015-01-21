.class Leu/chainfire/supersu/MainActivity$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Leu/chainfire/supersu/compat/FragmentActivity$鷭;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic 鷭:Leu/chainfire/supersu/MainActivity;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/MainActivity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/MainActivity$2;->鷭:Leu/chainfire/supersu/MainActivity;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final 櫯(I)Lo/囃;
    .locals 1

    .line 0
    if-nez p1, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$2;->鷭:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->櫯(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/AppsFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$2;->鷭:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->櫯(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/AppsFragment;

    move-result-object v0

    return-object v0

    .line 133
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$2;->鷭:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->ˮ͈(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/LogsFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$2;->鷭:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->ˮ͈(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/LogsFragment;

    move-result-object v0

    return-object v0

    .line 134
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$2;->鷭:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->ȃ(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/SettingsFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$2;->鷭:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->ȃ(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/SettingsFragment;

    move-result-object v0

    return-object v0

    .line 135
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final 鷭(I)V
    .locals 2

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$2;->鷭:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0, p1}, Leu/chainfire/supersu/MainActivity;->鷭(Leu/chainfire/supersu/MainActivity;I)V

    .line 120
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$2;->鷭:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->鷭(Leu/chainfire/supersu/MainActivity;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$2;->鷭:Leu/chainfire/supersu/MainActivity;

    iget-boolean v0, v0, Leu/chainfire/supersu/MainActivity;->櫯:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$2;->鷭:Leu/chainfire/supersu/MainActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Leu/chainfire/supersu/MainActivity;->櫯:Z

    .line 122
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$2;->鷭:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->櫯(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/AppsFragment;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/supersu/AppsFragment;->鷭()V

    .line 124
    :cond_0
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$2;->鷭:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->鷭(Leu/chainfire/supersu/MainActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$2;->鷭:Leu/chainfire/supersu/MainActivity;

    iget-boolean v0, v0, Leu/chainfire/supersu/MainActivity;->ˮ͈:Z

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$2;->鷭:Leu/chainfire/supersu/MainActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Leu/chainfire/supersu/MainActivity;->ˮ͈:Z

    .line 126
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$2;->鷭:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->ˮ͈(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/LogsFragment;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/supersu/LogsFragment;->鷭()V

    .line 128
    :cond_1
    return-void
.end method

.method public final 鷭(ILandroid/support/v4/app/Fragment;)V
    .locals 2

    .line 0
    if-nez p1, :cond_0

    instance-of v0, p2, Leu/chainfire/supersu/AppsFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$2;->鷭:Leu/chainfire/supersu/MainActivity;

    move-object v1, p2

    check-cast v1, Leu/chainfire/supersu/AppsFragment;

    invoke-static {v0, v1}, Leu/chainfire/supersu/MainActivity;->鷭(Leu/chainfire/supersu/MainActivity;Leu/chainfire/supersu/AppsFragment;)V

    .line 141
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    instance-of v0, p2, Leu/chainfire/supersu/LogsFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$2;->鷭:Leu/chainfire/supersu/MainActivity;

    move-object v1, p2

    check-cast v1, Leu/chainfire/supersu/LogsFragment;

    invoke-static {v0, v1}, Leu/chainfire/supersu/MainActivity;->鷭(Leu/chainfire/supersu/MainActivity;Leu/chainfire/supersu/LogsFragment;)V

    .line 142
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    instance-of v0, p2, Leu/chainfire/supersu/SettingsFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$2;->鷭:Leu/chainfire/supersu/MainActivity;

    move-object v1, p2

    check-cast v1, Leu/chainfire/supersu/SettingsFragment;

    invoke-static {v0, v1}, Leu/chainfire/supersu/MainActivity;->鷭(Leu/chainfire/supersu/MainActivity;Leu/chainfire/supersu/SettingsFragment;)V

    .line 143
    :cond_2
    return-void
.end method
