{
    "settings":{
       "analysis":{
          "analyzer":{
             "lenght_one_separate":{
                "tokenizer":"minStandard",
                "filter":["lowercase"]
             }
          },
          "tokenizer":{
             "minStandard":{
                "type":"standard",
                "max_token_length":"1"
             }
          }
       }
    },
    "mappings": {
        "deal_sku": {
            "properties": {
                "refund_policy": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "original_price": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "description_properties": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "dx_tag": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "deal_tags": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "purchase_lower_limit": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "real_buyer_number": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "tipped_time": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "description_images": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "discount": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "draft_update_time": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "medium_name": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "need_sync": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "purchase_upper_limit": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "deal_product_properties": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "order_promo_card_set": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "delivery_fee": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "focus_bg_color": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "payment_start_time": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "product_id": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "buyer_number": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "sale_forms": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "deal_id": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "extension_id": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "min_discount": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "redeem_lowest_total_price": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "draft_create_time": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "area_code": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "brand_label": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "focus_img_count": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "is_published_show_stocks": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "platinum_member_price": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "brand_id": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "sku_min_price": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "draft_content_top_ad_url": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "meta_description": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "show_stocks": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "start_time": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "description_usage": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "sku_max_price": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "editor_username": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "user_purchase_limit": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "is_published_price": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "name": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "deposit": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "payment_end_time": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "short_name": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "skuRelation": {
                    "properties": {
                        "is_enable": {
                            "type": "string",
                            "index": "not_analyzed"
                        },
                        "discount": {
                            "type": "string",
                            "index": "not_analyzed"
                        },
                        "purchase_limit": {
                            "type": "string",
                            "index": "not_analyzed"
                        },
                        "tax": {
                            "type": "string",
                            "index": "not_analyzed"
                        },
                        "value_of_goods": {
                            "type": "string",
                            "index": "not_analyzed"
                        },
                        "direct_id": {
                            "type": "string",
                            "index": "not_analyzed"
                        },
                        "stocks": {
                            "type": "string",
                            "index": "not_analyzed"
                        },
                        "customers_price": {
                            "type": "string",
                            "index": "not_analyzed"
                        },
                        "customs_product_number": {
                            "type": "string",
                            "index": "not_analyzed"
                        },
                        "sku_no": {
                            "type": "string",
                            "index": "not_analyzed"
                        },
                        "deposit": {
                            "type": "string",
                            "index": "not_analyzed"
                        },
                        "market_price": {
                            "type": "string",
                            "index": "not_analyzed"
                        },
                        "master_sku": {
                            "type": "string",
                            "index": "not_analyzed"
                        },
                        "hash_id": {
                            "type": "string",
                            "index": "not_analyzed"
                        }
                    }
                },
                "update_editor": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "is_shown_in_home": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "show_category": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "special_deal_group_name": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "status": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "note": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "diamond_member_price": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "focus_title": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "description": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "sale_type": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "draft_our_comments": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "merchant_id": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "meta_keywords": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "platform": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "stocks": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "discounted_price": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "shipping_system_id": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "is_wish_to_buy": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "wish_title": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "sku_max_market_price": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "company": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "ad_copy": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "draft_mobile_infos": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "draft_related_hash_ids": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "related_deal_group_name": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "product_detail_images": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "end_time": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "ending_buyer_number": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "second_kill_time": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "deal_group_label": {
                    "type": "string",
                    "analyzer": "lenght_one_separate"
                },
                "shipping_system_type": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "draft_guide_comments": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "site": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "sku_no": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "using_title": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "is_stock_split": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "draft_content_top_ad_image": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "draft_create_username": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "is_b2c_deal": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "member_purchase_limit": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "attributes": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "commission_rate": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "gold_member_price": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "category": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "virtual_goods_id": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "is_deal_dx_enable": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "draft_update_username": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "hash_id": {
                    "type": "string",
                    "index": "not_analyzed"
                }
            }
        }
    }
}
