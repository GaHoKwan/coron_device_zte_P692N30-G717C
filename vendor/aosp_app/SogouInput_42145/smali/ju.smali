.class public Lju;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lju;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Lju;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->finish()V

    .line 281
    return-void
.end method
