.class Lcom/android/server/InputMethodManagerService$ImeStateOnDisplay$1;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService$ImeStateOnDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/InputMethodManagerService$ImeStateOnDisplay;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService$ImeStateOnDisplay;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$ImeStateOnDisplay$1;->this$1:Lcom/android/server/InputMethodManagerService$ImeStateOnDisplay;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .parameter "name"
    .parameter "service"

    .prologue
    .line 291
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 294
    return-void
.end method
