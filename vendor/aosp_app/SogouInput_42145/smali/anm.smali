.class public Lanm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lanm;->a:Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lanm;->a:Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;

    const-string v1, "onProgressChanged"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a(Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lanm;->a:Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a(Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lafp;->n(Z)V

    .line 62
    iget-object v0, p0, Lanm;->a:Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;

    invoke-static {v0, p2}, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a(Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;I)I

    .line 63
    iget-object v0, p0, Lanm;->a:Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;

    iget-object v1, p0, Lanm;->a:Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a(Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lanm;->a:Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->b(Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    float-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a(Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;J)J

    .line 64
    iget-object v0, p0, Lanm;->a:Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;

    iget-object v1, p0, Lanm;->a:Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a(Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a(Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;J)Z

    .line 69
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lanm;->a:Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;

    const-string v1, "onStartTrackingTouch"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a(Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lanm;->a:Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;

    const-string v1, "onStopTrackingTouch"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a(Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;Ljava/lang/String;)V

    .line 79
    return-void
.end method
