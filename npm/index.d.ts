declare module '@apiverve/portnumberlookup' {
  export interface portnumberlookupOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface portnumberlookupResponse {
    status: string;
    error: string | null;
    data: PortNumberLookupData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface PortNumberLookupData {
      port:         number | null;
      service:      null | string;
      protocol:     null | string;
      description:  null | string;
      category:     null | string;
      isWellKnown:  boolean | null;
      isRegistered: boolean | null;
      isDynamic:    boolean | null;
  }

  export default class portnumberlookupWrapper {
    constructor(options: portnumberlookupOptions);

    execute(callback: (error: any, data: portnumberlookupResponse | null) => void): Promise<portnumberlookupResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: portnumberlookupResponse | null) => void): Promise<portnumberlookupResponse>;
    execute(query?: Record<string, any>): Promise<portnumberlookupResponse>;
  }
}
