.class public Lahh;
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
    .line 322
    iput-object p1, p0, Lahh;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 324
    iget-object v0, p0, Lahh;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Lanb;

    move-result-object v0

    invoke-virtual {v0}, Lanb;->b()V

    .line 325
    return-void
.end method
