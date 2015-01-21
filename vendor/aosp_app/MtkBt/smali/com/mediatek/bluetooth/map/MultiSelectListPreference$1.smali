.class Lcom/mediatek/bluetooth/map/MultiSelectListPreference$1;
.super Ljava/lang/Object;
.source "MultiSelectListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/map/MultiSelectListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/map/MultiSelectListPreference;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/map/MultiSelectListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/MultiSelectListPreference$1;->this$0:Lcom/mediatek/bluetooth/map/MultiSelectListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .parameter "dialog"
    .parameter "which"
    .parameter "val"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MultiSelectListPreference$1;->this$0:Lcom/mediatek/bluetooth/map/MultiSelectListPreference;

    #getter for: Lcom/mediatek/bluetooth/map/MultiSelectListPreference;->mClickedDialogEntryItems:[Z
    invoke-static {v0}, Lcom/mediatek/bluetooth/map/MultiSelectListPreference;->access$000(Lcom/mediatek/bluetooth/map/MultiSelectListPreference;)[Z

    move-result-object v0

    aput-boolean p3, v0, p2

    .line 65
    return-void
.end method
