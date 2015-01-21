.class Lcom/mediatek/bluetooth/ftp/MultiCheckAdapter$1;
.super Ljava/lang/Object;
.source "BluetoothFtpSeveralMarker.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/ftp/MultiCheckAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/ftp/MultiCheckAdapter;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/ftp/MultiCheckAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/MultiCheckAdapter$1;->this$0:Lcom/mediatek/bluetooth/ftp/MultiCheckAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "btn"
    .parameter "isChecked"

    .prologue
    .line 458
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    .line 459
    .local v0, cb:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 460
    .local v1, pos:I
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/MultiCheckAdapter$1;->this$0:Lcom/mediatek/bluetooth/ftp/MultiCheckAdapter;

    invoke-virtual {v2, v1, p2}, Lcom/mediatek/bluetooth/ftp/MultiCheckAdapter;->setChecked(IZ)V

    .line 462
    return-void
.end method
