.class Ltmsdk/common/module/applist/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdk/common/module/update/IUpdateObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/module/applist/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yQ:Ltmsdk/common/module/applist/a;


# direct methods
.method constructor <init>(Ltmsdk/common/module/applist/a;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Ltmsdk/common/module/applist/a$1;->yQ:Ltmsdk/common/module/applist/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ltmsdk/common/module/update/UpdateInfo;)V
    .locals 5
    .parameter "updateInfo"

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 98
    .local v0, type:Ltmsdkobf/bw;
    iget-wide v1, p1, Ltmsdk/common/module/update/UpdateInfo;->flag:J

    const-wide/16 v3, 0x200

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 99
    sget-object v0, Ltmsdkobf/bw;->hm:Ltmsdkobf/bw;

    .line 147
    :cond_0
    :goto_0
    iget-object v1, p0, Ltmsdk/common/module/applist/a$1;->yQ:Ltmsdk/common/module/applist/a;

    invoke-static {v1, v0}, Ltmsdk/common/module/applist/a;->a(Ltmsdk/common/module/applist/a;Ltmsdkobf/bw;)V

    .line 148
    return-void

    .line 101
    :cond_1
    iget-wide v1, p1, Ltmsdk/common/module/update/UpdateInfo;->flag:J

    const-wide/16 v3, 0x40

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 102
    sget-object v0, Ltmsdkobf/bw;->hq:Ltmsdkobf/bw;

    goto :goto_0

    .line 104
    :cond_2
    iget-wide v1, p1, Ltmsdk/common/module/update/UpdateInfo;->flag:J

    const-wide/16 v3, 0x400

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 105
    sget-object v0, Ltmsdkobf/bw;->hn:Ltmsdkobf/bw;

    goto :goto_0

    .line 107
    :cond_3
    iget-wide v1, p1, Ltmsdk/common/module/update/UpdateInfo;->flag:J

    const-wide/16 v3, 0x80

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    .line 108
    sget-object v0, Ltmsdkobf/bw;->ho:Ltmsdkobf/bw;

    goto :goto_0

    .line 110
    :cond_4
    iget-wide v1, p1, Ltmsdk/common/module/update/UpdateInfo;->flag:J

    const-wide/16 v3, 0x800

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    .line 111
    sget-object v0, Ltmsdkobf/bw;->hp:Ltmsdkobf/bw;

    goto :goto_0

    .line 113
    :cond_5
    iget-wide v1, p1, Ltmsdk/common/module/update/UpdateInfo;->flag:J

    const-wide/16 v3, 0x100

    cmp-long v1, v1, v3

    if-nez v1, :cond_6

    .line 114
    sget-object v0, Ltmsdkobf/bw;->hr:Ltmsdkobf/bw;

    goto :goto_0

    .line 116
    :cond_6
    iget-wide v1, p1, Ltmsdk/common/module/update/UpdateInfo;->flag:J

    const-wide/16 v3, 0x1000

    cmp-long v1, v1, v3

    if-nez v1, :cond_7

    .line 117
    sget-object v0, Ltmsdkobf/bw;->hD:Ltmsdkobf/bw;

    goto :goto_0

    .line 119
    :cond_7
    iget-wide v1, p1, Ltmsdk/common/module/update/UpdateInfo;->flag:J

    const-wide/16 v3, 0x2000

    cmp-long v1, v1, v3

    if-nez v1, :cond_8

    .line 120
    sget-object v0, Ltmsdkobf/bw;->hF:Ltmsdkobf/bw;

    goto :goto_0

    .line 122
    :cond_8
    iget-wide v1, p1, Ltmsdk/common/module/update/UpdateInfo;->flag:J

    const-wide/16 v3, 0x4000

    cmp-long v1, v1, v3

    if-nez v1, :cond_9

    .line 123
    sget-object v0, Ltmsdkobf/bw;->hG:Ltmsdkobf/bw;

    goto :goto_0

    .line 125
    :cond_9
    iget-wide v1, p1, Ltmsdk/common/module/update/UpdateInfo;->flag:J

    const-wide/32 v3, 0x8000

    cmp-long v1, v1, v3

    if-nez v1, :cond_a

    .line 126
    sget-object v0, Ltmsdkobf/bw;->hH:Ltmsdkobf/bw;

    goto :goto_0

    .line 128
    :cond_a
    iget-wide v1, p1, Ltmsdk/common/module/update/UpdateInfo;->flag:J

    const-wide/32 v3, 0x10000

    cmp-long v1, v1, v3

    if-nez v1, :cond_b

    .line 129
    sget-object v0, Ltmsdkobf/bw;->hI:Ltmsdkobf/bw;

    goto :goto_0

    .line 131
    :cond_b
    iget-wide v1, p1, Ltmsdk/common/module/update/UpdateInfo;->flag:J

    const-wide/32 v3, 0x20000

    cmp-long v1, v1, v3

    if-nez v1, :cond_c

    .line 132
    sget-object v0, Ltmsdkobf/bw;->hJ:Ltmsdkobf/bw;

    goto/16 :goto_0

    .line 134
    :cond_c
    iget-wide v1, p1, Ltmsdk/common/module/update/UpdateInfo;->flag:J

    const-wide/32 v3, 0x40000

    cmp-long v1, v1, v3

    if-nez v1, :cond_d

    .line 135
    sget-object v0, Ltmsdkobf/bw;->hK:Ltmsdkobf/bw;

    goto/16 :goto_0

    .line 137
    :cond_d
    iget-wide v1, p1, Ltmsdk/common/module/update/UpdateInfo;->flag:J

    const-wide/32 v3, 0x80000

    cmp-long v1, v1, v3

    if-nez v1, :cond_e

    .line 138
    sget-object v0, Ltmsdkobf/bw;->hM:Ltmsdkobf/bw;

    goto/16 :goto_0

    .line 140
    :cond_e
    iget-wide v1, p1, Ltmsdk/common/module/update/UpdateInfo;->flag:J

    const-wide/32 v3, 0x100000

    cmp-long v1, v1, v3

    if-nez v1, :cond_f

    .line 141
    sget-object v0, Ltmsdkobf/bw;->hN:Ltmsdkobf/bw;

    goto/16 :goto_0

    .line 143
    :cond_f
    iget-wide v1, p1, Ltmsdk/common/module/update/UpdateInfo;->flag:J

    const-wide/32 v3, 0x10000000

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 144
    sget-object v0, Ltmsdkobf/bw;->hP:Ltmsdkobf/bw;

    goto/16 :goto_0
.end method
