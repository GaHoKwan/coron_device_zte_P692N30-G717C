.class Leu/chainfire/supersu/SettingsFragment$IconItem;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/supersu/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IconItem"
.end annotation


# instance fields
.field final synthetic ˮ͈:Leu/chainfire/supersu/SettingsFragment;

.field public final 櫯:I

.field public final 鷭:I


# direct methods
.method public constructor <init>(Leu/chainfire/supersu/SettingsFragment;ILjava/lang/Integer;)V
    .locals 1

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/SettingsFragment$IconItem;->ˮ͈:Leu/chainfire/supersu/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1085
    iput p2, p0, Leu/chainfire/supersu/SettingsFragment$IconItem;->鷭:I

    .line 1086
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/SettingsFragment$IconItem;->櫯:I

    .line 1087
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$IconItem;->ˮ͈:Leu/chainfire/supersu/SettingsFragment;

    iget v1, p0, Leu/chainfire/supersu/SettingsFragment$IconItem;->鷭:I

    invoke-static {v0, v1}, Leu/chainfire/supersu/SettingsFragment;->鷭(Leu/chainfire/supersu/SettingsFragment;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
