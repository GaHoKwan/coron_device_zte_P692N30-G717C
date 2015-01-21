.class final Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$1;
.super Ljava/lang/Object;
.source "SpecialCharSequenceMgrProxy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->handlePinEntry(Landroid/content/Context;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$innerInput:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$1;->val$innerInput:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 149
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    .line 150
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 151
    .local v1, listAdapter:Landroid/widget/ListAdapter;
    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 152
    .local v2, slot:I
    iget-object v3, p0, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$1;->val$innerInput:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->handlePinMmi(Ljava/lang/String;I)Z

    .line 154
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 155
    return-void
.end method
