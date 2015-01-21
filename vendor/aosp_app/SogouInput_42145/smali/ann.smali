.class public Lann;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/ui/PixelPreference;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/ui/PixelPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lann;->a:Lcom/sohu/inputmethod/settings/ui/PixelPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lann;->a:Lcom/sohu/inputmethod/settings/ui/PixelPreference;

    invoke-static {v0, p2}, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->a(Lcom/sohu/inputmethod/settings/ui/PixelPreference;I)I

    .line 209
    iget-object v0, p0, Lann;->a:Lcom/sohu/inputmethod/settings/ui/PixelPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 210
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 211
    return-void
.end method
