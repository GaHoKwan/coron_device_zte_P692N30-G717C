.class public final enum Leu/chainfire/supersu/Installer$Architecture;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/supersu/Installer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Architecture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Leu/chainfire/supersu/Installer$Architecture;>;"
    }
.end annotation


# static fields
.field private static final synthetic Ą:[Leu/chainfire/supersu/Installer$Architecture;

.field public static final enum ȃ:Leu/chainfire/supersu/Installer$Architecture;

.field public static final enum ˮ͈:Leu/chainfire/supersu/Installer$Architecture;

.field public static final enum 櫯:Leu/chainfire/supersu/Installer$Architecture;

.field public static final enum 鷭:Leu/chainfire/supersu/Installer$Architecture;


# direct methods
.method static <clinit>()V
    .locals 3

    .line 0
    new-instance v0, Leu/chainfire/supersu/Installer$Architecture;

    const-string v1, "ARM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Leu/chainfire/supersu/Installer$Architecture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/chainfire/supersu/Installer$Architecture;->鷭:Leu/chainfire/supersu/Installer$Architecture;

    new-instance v0, Leu/chainfire/supersu/Installer$Architecture;

    const-string v1, "X86"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Leu/chainfire/supersu/Installer$Architecture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/chainfire/supersu/Installer$Architecture;->櫯:Leu/chainfire/supersu/Installer$Architecture;

    new-instance v0, Leu/chainfire/supersu/Installer$Architecture;

    const-string v1, "MIPS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Leu/chainfire/supersu/Installer$Architecture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/chainfire/supersu/Installer$Architecture;->ˮ͈:Leu/chainfire/supersu/Installer$Architecture;

    new-instance v0, Leu/chainfire/supersu/Installer$Architecture;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Leu/chainfire/supersu/Installer$Architecture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/chainfire/supersu/Installer$Architecture;->ȃ:Leu/chainfire/supersu/Installer$Architecture;

    const/4 v0, 0x4

    new-array v0, v0, [Leu/chainfire/supersu/Installer$Architecture;

    sget-object v1, Leu/chainfire/supersu/Installer$Architecture;->鷭:Leu/chainfire/supersu/Installer$Architecture;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Leu/chainfire/supersu/Installer$Architecture;->櫯:Leu/chainfire/supersu/Installer$Architecture;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Leu/chainfire/supersu/Installer$Architecture;->ˮ͈:Leu/chainfire/supersu/Installer$Architecture;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Leu/chainfire/supersu/Installer$Architecture;->ȃ:Leu/chainfire/supersu/Installer$Architecture;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Leu/chainfire/supersu/Installer$Architecture;->Ą:[Leu/chainfire/supersu/Installer$Architecture;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Leu/chainfire/supersu/Installer$Architecture;
    .locals 1

    .line 0
    const-class v0, Leu/chainfire/supersu/Installer$Architecture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Installer$Architecture;

    return-object v0
.end method

.method public static values()[Leu/chainfire/supersu/Installer$Architecture;
    .locals 5

    .line 0
    sget-object v0, Leu/chainfire/supersu/Installer$Architecture;->Ą:[Leu/chainfire/supersu/Installer$Architecture;

    move-object v3, v0

    array-length v3, v3

    new-array v4, v3, [Leu/chainfire/supersu/Installer$Architecture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4
.end method
