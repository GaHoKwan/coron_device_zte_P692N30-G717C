.class public Lahg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lahg;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 277
    iget-object v0, p0, Lahg;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->b(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;Z)V

    .line 278
    return-void
.end method
