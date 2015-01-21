.class public Lcom/sohu/inputmethod/settings/HelpActivity;
.super Landroid/preference/Preference;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 5

    .prologue
    .line 22
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 23
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/HelpActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 24
    const-string v1, "help/SogouHelp.htm"

    const-string v2, "sogouhelp.htm"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Laox;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 25
    const-string v1, "file:///data/data/com.sohu.inputmethod.sogou/files/sogouhelp.htm"

    invoke-static {v1}, Laox;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 26
    return-void
.end method
