.class public Laek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/LogFeedBackActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/LogFeedBackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Laek;->a:Lcom/sohu/inputmethod/settings/LogFeedBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Laek;->a:Lcom/sohu/inputmethod/settings/LogFeedBackActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->finish()V

    .line 103
    return-void
.end method
