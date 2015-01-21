.class public Lue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lue;->a:Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    iget-object v0, p0, Lue;->a:Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;

    invoke-static {v0}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v0, p0, Lue;->a:Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;

    invoke-static {v0}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;)Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f0b0021

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 109
    iget-object v0, p0, Lue;->a:Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;

    invoke-static {v0}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    if-nez p2, :cond_1

    :goto_1
    iput-boolean v1, v0, Lamo;->A:Z

    .line 110
    return-void

    :cond_0
    move v0, v2

    .line 103
    goto :goto_0

    :cond_1
    move v1, v2

    .line 109
    goto :goto_1
.end method
