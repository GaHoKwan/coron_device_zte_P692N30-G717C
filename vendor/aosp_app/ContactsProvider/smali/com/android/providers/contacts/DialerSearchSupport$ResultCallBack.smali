.class Lcom/android/providers/contacts/DialerSearchSupport$ResultCallBack;
.super Ljava/lang/Object;
.source "DialerSearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/DialerSearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultCallBack"
.end annotation


# instance fields
.field mCursorCount:I

.field mFilter:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/providers/contacts/DialerSearchSupport;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/DialerSearchSupport;)V
    .locals 0
    .parameter

    .prologue
    .line 928
    iput-object p1, p0, Lcom/android/providers/contacts/DialerSearchSupport$ResultCallBack;->this$0:Lcom/android/providers/contacts/DialerSearchSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
