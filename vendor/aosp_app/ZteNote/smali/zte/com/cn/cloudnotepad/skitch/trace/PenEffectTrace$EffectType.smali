.class public final enum Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;
.super Ljava/lang/Enum;
.source "PenEffectTrace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EffectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;

.field public static final enum MARKER:Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;

.field public static final enum PENCIL:Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;

    const-string v1, "PENCIL"

    invoke-direct {v0, v1, v2}, Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;->PENCIL:Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;

    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;

    const-string v1, "MARKER"

    invoke-direct {v0, v1, v3}, Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;->MARKER:Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;

    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;->PENCIL:Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;

    aput-object v1, v0, v2

    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;->MARKER:Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;

    aput-object v1, v0, v3

    sput-object v0, Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;->ENUM$VALUES:[Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;

    return-object v0
.end method

.method public static values()[Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;->ENUM$VALUES:[Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;

    array-length v1, v0

    new-array v2, v1, [Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
