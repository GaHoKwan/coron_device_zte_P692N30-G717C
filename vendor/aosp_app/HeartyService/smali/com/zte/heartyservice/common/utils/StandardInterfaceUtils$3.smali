.class final Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$3;
.super Ljava/lang/Object;
.source "StandardInterfaceUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->p2ZB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 4723
    :try_start_0
    new-instance v21, Ljava/lang/String;

    const-string v22, "amF2YS5uZXQuVVJM"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    const/16 v23, 0x2

    invoke-static/range {v22 .. v23}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v21 .. v21}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 4724
    .local v5, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v3, v0, [Ljava/lang/Class;

    const/16 v21, 0x0

    const-class v22, Ljava/lang/String;

    aput-object v22, v3, v21

    .line 4725
    .local v3, argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-virtual {v5, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 4726
    .local v8, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/String;

    const-string v24, "aHR0cDovL2Nsb3VkLnp0ZWRldmljZXMuY29tL2hzL3pi"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/String;-><init>([B)V

    aput-object v23, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 4728
    .local v19, u:Ljava/lang/Object;
    new-instance v21, Ljava/lang/String;

    const-string v22, "b3BlbkNvbm5lY3Rpb24="

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    const/16 v23, 0x2

    invoke-static/range {v22 .. v23}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>([B)V

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 4730
    .local v7, con:Ljava/lang/Object;
    new-instance v21, Ljava/lang/String;

    const-string v22, "c2V0Q29ubmVjdFRpbWVvdXQ="

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    const/16 v23, 0x2

    invoke-static/range {v22 .. v23}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>([B)V

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x7530

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v7, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4732
    new-instance v21, Ljava/lang/String;

    const-string v22, "c2V0UmVhZFRpbWVvdXQ="

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    const/16 v23, 0x2

    invoke-static/range {v22 .. v23}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>([B)V

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x2710

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v7, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4734
    new-instance v21, Ljava/lang/String;

    const-string v22, "c2V0RG9PdXRwdXQ="

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    const/16 v23, 0x2

    invoke-static/range {v22 .. v23}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>([B)V

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v7, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4736
    new-instance v21, Ljava/lang/String;

    const-string v22, "c2V0RG9JbnB1dA=="

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    const/16 v23, 0x2

    invoke-static/range {v22 .. v23}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>([B)V

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v7, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4738
    new-instance v21, Ljava/lang/String;

    const-string v22, "c2V0VXNlQ2FjaGVz"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    const/16 v23, 0x2

    invoke-static/range {v22 .. v23}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>([B)V

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v7, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4740
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->createRandomAESKey()[B

    move-result-object v15

    .line 4741
    .local v15, k4:[B
    const/16 v21, 0x10

    move/from16 v0, v21

    new-array v12, v0, [B

    .line 4742
    .local v12, k:[B
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x10

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v15, v0, v12, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4744
    const/16 v21, 0xa2

    move/from16 v0, v21

    new-array v10, v0, [B

    fill-array-data v10, :array_0

    .line 4745
    .local v10, encodedKey:[B
    const/4 v13, 0x0

    .line 4746
    .local v13, k2:Ljava/security/Key;
    const-string v21, "RSA"

    invoke-static/range {v21 .. v21}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v16

    .line 4747
    .local v16, keyFactory:Ljava/security/KeyFactory;
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v4, v10}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 4748
    .local v4, bobPubKeySpec:Ljava/security/spec/X509EncodedKeySpec;
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v13

    .line 4750
    const/16 v21, 0x10

    move/from16 v0, v21

    new-array v14, v0, [B

    fill-array-data v14, :array_1

    .line 4752
    .local v14, k3:[B
    new-instance v21, Ljava/lang/String;

    const-string v22, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    const/16 v23, 0x2

    invoke-static/range {v22 .. v23}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>([B)V

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "p0"

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-static {v12, v13}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryStringRSA([BLjava/security/Key;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v7, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4754
    new-instance v22, Ljava/lang/String;

    const-string v21, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    const/16 v23, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v21, 0x0

    const-string v24, "p1"

    aput-object v24, v23, v21

    const/16 v24, 0x1

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v21

    new-instance v25, Ljava/lang/String;

    const-string v26, "Z2V0RGlk"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    const/16 v27, 0x2

    invoke-static/range {v26 .. v27}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/String;-><init>([B)V

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    const/16 v25, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v14}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v12}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v23, v24

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v7, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4756
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 4759
    .local v11, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-class v21, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/String;

    const-string v23, "ZG9RdWVyeQ=="

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    const/16 v24, 0x2

    invoke-static/range {v23 .. v24}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/String;-><init>([B)V

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v11, v23, v24

    invoke-static/range {v21 .. v23}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4761
    const/16 v17, 0x2

    .local v17, n:I
    :goto_0
    const/16 v21, 0x29

    move/from16 v0, v17

    move/from16 v1, v21

    if-gt v0, v1, :cond_1

    .line 4762
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "p"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 4763
    .local v18, pN:Ljava/lang/String;
    add-int/lit8 v21, v17, -0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    .line 4764
    .local v20, visits:Ljava/lang/Integer;
    if-eqz v20, :cond_0

    .line 4765
    new-instance v21, Ljava/lang/String;

    const-string v22, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    const/16 v23, 0x2

    invoke-static/range {v22 .. v23}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>([B)V

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v18, v22, v23

    const/16 v23, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v0, v12}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v7, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4761
    :cond_0
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 4768
    .end local v18           #pN:Ljava/lang/String;
    .end local v20           #visits:Ljava/lang/Integer;
    :cond_1
    new-instance v21, Ljava/lang/String;

    const-string v22, "c2V0UmVxdWVzdE1ldGhvZA=="

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    const/16 v23, 0x2

    invoke-static/range {v22 .. v23}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>([B)V

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Ljava/lang/String;

    const-string v25, "UE9TVA=="

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    const/16 v26, 0x2

    invoke-static/range {v25 .. v26}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/String;-><init>([B)V

    aput-object v24, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v7, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4770
    new-instance v21, Ljava/lang/String;

    const-string v22, "Z2V0UmVzcG9uc2VDb2Rl"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    const/16 v23, 0x2

    invoke-static/range {v22 .. v23}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>([B)V

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v7, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 4772
    .local v6, code:I
    const/16 v21, 0xc8

    move/from16 v0, v21

    if-ne v6, v0, :cond_2

    .line 4774
    const-class v21, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/String;

    const-string v23, "ZGVsZXRlRGF0YQ=="

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    const/16 v24, 0x2

    invoke-static/range {v23 .. v24}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/String;-><init>([B)V

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4775
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "key_zb_check"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4780
    :cond_2
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->access$102(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 4782
    .end local v3           #argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v4           #bobPubKeySpec:Ljava/security/spec/X509EncodedKeySpec;
    .end local v5           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v6           #code:I
    .end local v7           #con:Ljava/lang/Object;
    .end local v8           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v10           #encodedKey:[B
    .end local v11           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v12           #k:[B
    .end local v13           #k2:Ljava/security/Key;
    .end local v14           #k3:[B
    .end local v15           #k4:[B
    .end local v16           #keyFactory:Ljava/security/KeyFactory;
    .end local v17           #n:I
    .end local v19           #u:Ljava/lang/Object;
    :goto_1
    return-void

    .line 4777
    :catch_0
    move-exception v9

    .line 4778
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4780
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->access$102(Ljava/lang/Thread;)Ljava/lang/Thread;

    goto :goto_1

    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v21

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->access$102(Ljava/lang/Thread;)Ljava/lang/Thread;

    throw v21

    .line 4744
    :array_0
    .array-data 0x1
        0x30t
        0x81t
        0x9ft
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        0x86t
        0x48t
        0x86t
        0xf7t
        0xdt
        0x1t
        0x1t
        0x1t
        0x5t
        0x0t
        0x3t
        0x81t
        0x8dt
        0x0t
        0x30t
        0x81t
        0x89t
        0x2t
        0x81t
        0x81t
        0x0t
        0xc3t
        0x58t
        0xaet
        0x77t
        0xfft
        0x22t
        0x2bt
        0xd3t
        0x3ft
        0x3dt
        0xc6t
        0x8t
        0xa5t
        0x31t
        0xc6t
        0x0t
        0x67t
        0x1bt
        0x44t
        0xc6t
        0x2t
        0xc8t
        0xd9t
        0xd4t
        0xet
        0xf2t
        0xb6t
        0xe4t
        0xa1t
        0x1ct
        0x4at
        0xf4t
        0x6dt
        0xact
        0x2ft
        0xe2t
        0x2dt
        0x14t
        0xe3t
        0xb7t
        0x39t
        0xfat
        0x67t
        0x7bt
        0x78t
        0x18t
        0x5bt
        0xc2t
        0x13t
        0x38t
        0x6bt
        0x74t
        0x5ft
        0xc8t
        0xe0t
        0x39t
        0x35t
        0x91t
        0x3bt
        0xf7t
        0x5ft
        0xe9t
        0xb3t
        0x53t
        0x9dt
        0xe5t
        0xa7t
        0xeat
        0x77t
        0x2t
        0xc0t
        0x54t
        0x11t
        0x7et
        0x2t
        0xact
        0xa7t
        0x9at
        0xa7t
        0xc3t
        0x89t
        0xcat
        0xbet
        0xe3t
        0x65t
        0x5t
        0x58t
        0x87t
        0x17t
        0xa8t
        0x54t
        0xa2t
        0x5t
        0x67t
        0xdt
        0x61t
        0x4ct
        0x61t
        0x62t
        0xc6t
        0xbft
        0xc4t
        0x67t
        0x89t
        0xd9t
        0xd5t
        0x22t
        0xf4t
        0xf6t
        0x55t
        0x2t
        0x60t
        0xfat
        0x88t
        0x25t
        0xcft
        0x12t
        0x4bt
        0xfet
        0x17t
        0x3et
        0xf3t
        0x23t
        0x42t
        0x58t
        0x5ct
        0x6t
        0x39t
        0x2t
        0x3t
        0x1t
        0x0t
        0x1t
    .end array-data

    .line 4750
    nop

    :array_1
    .array-data 0x1
        0x43t
        0xf3t
        0x5t
        0x22t
        0xb2t
        0xa6t
        0x2et
        0xe2t
        0x39t
        0x58t
        0x25t
        0x38t
        0xe0t
        0x2dt
        0x44t
        0xb7t
    .end array-data
.end method
