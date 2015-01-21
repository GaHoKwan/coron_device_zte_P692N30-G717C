.class Lcom/android/phone/CallerInfoAsyncQuery$Pairs;
.super Ljava/lang/Object;
.source "CallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallerInfoAsyncQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Pairs"
.end annotation


# instance fields
.field cookie:Ljava/lang/Object;

.field l:Lcom/android/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;


# direct methods
.method constructor <init>(Lcom/android/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V
    .locals 0
    .parameter "l"
    .parameter "o"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/phone/CallerInfoAsyncQuery$Pairs;->l:Lcom/android/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 33
    iput-object p2, p0, Lcom/android/phone/CallerInfoAsyncQuery$Pairs;->cookie:Ljava/lang/Object;

    .line 34
    return-void
.end method
