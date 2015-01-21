.class public Lcom/android/contacts/ext/Anr;
.super Ljava/lang/Object;
.source "Anr.java"


# static fields
.field public static final TYPE_AAS:I = 0x65


# instance fields
.field public mAasIndex:Ljava/lang/String;

.field public mAdditionNumber:Ljava/lang/String;

.field public mId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/ext/Anr;->mId:J

    return-void
.end method
