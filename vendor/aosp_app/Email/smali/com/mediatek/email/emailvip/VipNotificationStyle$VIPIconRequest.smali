.class public Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;
.super Ljava/lang/Object;
.source "VipNotificationStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/email/emailvip/VipNotificationStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VIPIconRequest"
.end annotation


# static fields
.field public static final POSITION_LEFT:I = 0x1

.field public static final POSITION_RIGHT:I = 0x2


# instance fields
.field public mIconPosition:I

.field public mVipString:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
