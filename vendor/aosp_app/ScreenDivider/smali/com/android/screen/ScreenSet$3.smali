.class Lcom/android/screen/ScreenSet$3;
.super Ljava/lang/Object;
.source "ScreenSet.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/screen/ScreenSet;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/screen/ScreenSet;


# direct methods
.method constructor <init>(Lcom/android/screen/ScreenSet;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/screen/ScreenSet$3;->this$0:Lcom/android/screen/ScreenSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 112
    if-eqz p2, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/screen/ScreenSet$3;->this$0:Lcom/android/screen/ScreenSet;

    invoke-virtual {v0}, Lcom/android/screen/ScreenSet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ss_s_btn_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 119
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/screen/ScreenSet$3;->this$0:Lcom/android/screen/ScreenSet;

    invoke-virtual {v0}, Lcom/android/screen/ScreenSet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ss_s_btn_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
