.class public Lzg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/AccountList;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/AccountList;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lzg;->a:Lcom/sohu/inputmethod/settings/AccountList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter

    .prologue
    .line 308
    iget-object v0, p0, Lzg;->a:Lcom/sohu/inputmethod/settings/AccountList;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AccountList;->a(Lcom/sohu/inputmethod/settings/AccountList;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 309
    const/4 v0, 0x1

    return v0
.end method
