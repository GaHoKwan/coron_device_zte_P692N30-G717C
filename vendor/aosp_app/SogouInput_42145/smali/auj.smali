.class public Lauj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIMESettingsLauncher;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIMESettingsLauncher;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lauj;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettingsLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lauj;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettingsLauncher;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettingsLauncher;->finish()V

    .line 50
    return-void
.end method
