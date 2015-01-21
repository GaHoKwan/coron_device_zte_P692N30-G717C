.class Laef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laed;


# direct methods
.method constructor <init>(Laed;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Laef;->a:Laed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Laef;->a:Laed;

    iget-object v0, v0, Laed;->a:Lcom/sohu/inputmethod/settings/InstallThemeService;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->a(Lcom/sohu/inputmethod/settings/InstallThemeService;)V

    .line 203
    return-void
.end method
