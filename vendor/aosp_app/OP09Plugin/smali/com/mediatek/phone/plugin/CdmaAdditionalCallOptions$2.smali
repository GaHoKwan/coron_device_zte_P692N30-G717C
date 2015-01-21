.class Lcom/mediatek/phone/plugin/CdmaAdditionalCallOptions$2;
.super Ljava/lang/Object;
.source "CdmaAdditionalCallOptions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/phone/plugin/CdmaAdditionalCallOptions;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/plugin/CdmaAdditionalCallOptions;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/mediatek/phone/plugin/CdmaAdditionalCallOptions;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/mediatek/phone/plugin/CdmaAdditionalCallOptions$2;->this$0:Lcom/mediatek/phone/plugin/CdmaAdditionalCallOptions;

    iput-object p2, p0, Lcom/mediatek/phone/plugin/CdmaAdditionalCallOptions$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mediatek/phone/plugin/CdmaAdditionalCallOptions$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 174
    return-void
.end method
