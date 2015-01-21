.class Leu/chainfire/supersu/PreferenceListFragment$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic 鷭:Leu/chainfire/supersu/PreferenceListFragment;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/PreferenceListFragment;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/PreferenceListFragment$1;->鷭:Leu/chainfire/supersu/PreferenceListFragment;

    .line 31
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 37
    :pswitch_0
    iget-object v0, p0, Leu/chainfire/supersu/PreferenceListFragment$1;->鷭:Leu/chainfire/supersu/PreferenceListFragment;

    invoke-static {v0}, Leu/chainfire/supersu/PreferenceListFragment;->鷭(Leu/chainfire/supersu/PreferenceListFragment;)V

    .line 40
    :goto_0
    return-void
.end method
