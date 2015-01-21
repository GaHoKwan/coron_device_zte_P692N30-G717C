.class public abstract Lcom/mediatek/apst/util/command/BaseCommand;
.super Lcom/mediatek/apst/util/communication/common/TransportEntity;
.source "BaseCommand.java"


# static fields
.field public static final FEATURE_APPLICATION:I = 0x1000

.field public static final FEATURE_BACKUP:I = 0x1110000

.field public static final FEATURE_BOOKMARK:I = 0x1100000

.field public static final FEATURE_CALENDAR:I = 0x1000000

.field public static final FEATURE_CALENDAR_SYNC:I = 0x11000

.field public static final FEATURE_CONTACTS:I = 0x10

.field public static final FEATURE_MAIN:I = 0x1

.field public static final FEATURE_MEDIA:I = 0x100000

.field public static final FEATURE_MESSAGE:I = 0x100

.field public static final FEATURE_SYNC:I = 0x10000

.field private static final serialVersionUID:J = 0x2L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/apst/util/communication/common/TransportEntity;-><init>()V

    .line 101
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "featureId"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;-><init>(I)V

    .line 94
    return-void
.end method
