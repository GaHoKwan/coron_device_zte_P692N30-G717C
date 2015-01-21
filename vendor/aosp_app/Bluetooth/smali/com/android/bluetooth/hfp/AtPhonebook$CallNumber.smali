.class public Lcom/android/bluetooth/hfp/AtPhonebook$CallNumber;
.super Ljava/lang/Object;
.source "AtPhonebook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/AtPhonebook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallNumber"
.end annotation


# instance fields
.field public isVtCall:Z

.field public strNum:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 88
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/hfp/AtPhonebook$CallNumber;-><init>(Ljava/lang/String;Z)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "strNum"
    .parameter "isVtCall"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook$CallNumber;->strNum:Ljava/lang/String;

    .line 93
    iput-boolean p2, p0, Lcom/android/bluetooth/hfp/AtPhonebook$CallNumber;->isVtCall:Z

    .line 94
    return-void
.end method
